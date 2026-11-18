package riftbrek;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import com.mojang.brigadier.arguments.IntegerArgumentType;
import net.fabricmc.api.ModInitializer;
import net.fabricmc.fabric.api.command.v2.CommandRegistrationCallback;
import net.fabricmc.fabric.api.event.lifecycle.v1.ServerLifecycleEvents;
import net.fabricmc.loader.api.FabricLoader;
import net.minecraft.ChatFormatting;
import net.minecraft.commands.CommandSourceStack;
import net.minecraft.commands.Commands;
import net.minecraft.core.BlockPos;
import net.minecraft.core.registries.BuiltInRegistries;
import net.minecraft.network.chat.Component;
import net.minecraft.server.MinecraftServer;
import net.minecraft.server.level.ServerLevel;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Properties;

/** RIFTBREK Vanguard: embeds the headquarters data pack (data/riftbrek, tick+load tags) and wires it up automatically. */
public class RiftBrek implements ModInitializer {
    public static final Logger LOG = LoggerFactory.getLogger("riftbrek");
    private static int originX = 8192, originZ = 8192;
    private static boolean autoForceload = true;

    private static Path cfgPath() { return FabricLoader.getInstance().getConfigDir().resolve("riftbrek.properties"); }

    private static void saveConfig() {
        Properties pr = new Properties();
        pr.setProperty("originX", Integer.toString(originX));
        pr.setProperty("originZ", Integer.toString(originZ));
        pr.setProperty("autoForceload", Boolean.toString(autoForceload));
        try (var out = Files.newOutputStream(cfgPath())) {
            pr.store(out, "RIFTBREK: world X/Z where the base was pasted (schematic local 0,0). Must match the region files you installed.");
        } catch (Exception e) {
            LOG.warn("could not write riftbrek.properties: {}", e.toString());
        }
    }

    private static void loadConfig() {
        Path p = cfgPath();
        try {
            if (Files.exists(p)) {
                Properties pr = new Properties();
                try (var in = Files.newInputStream(p)) { pr.load(in); }
                originX = Integer.parseInt(pr.getProperty("originX", "8192").trim());
                originZ = Integer.parseInt(pr.getProperty("originZ", "8192").trim());
                autoForceload = Boolean.parseBoolean(pr.getProperty("autoForceload", "true").trim());
            } else {
                saveConfig();
            }
        } catch (Exception e) {
            LOG.warn("riftbrek.properties unreadable, using defaults ({}, {}): {}", originX, originZ, e.toString());
        }
    }

    private static void run(MinecraftServer s, String cmd) {
        s.getCommands().performPrefixedCommand(s.createCommandSourceStack().withSuppressedOutput(), cmd);
    }

    /** Removes the force-loads that belong to the origin currently stored in the world, then stores + loads the new one. */
    private static void applyOrigin(MinecraftServer s) {
        run(s, "function riftbrek:admin/forceload_off");   // uses the OLD origin from storage (no-op if none stored)
        run(s, "data modify storage riftbrek:cfg origin set value {x:" + originX + ",z:" + originZ + "}");
        if (autoForceload) run(s, "function riftbrek:admin/forceload");
    }

    /** Own paste check: loads each probe chunk itself, so the result does not depend on where the player stands. */
    private static int verify(CommandSourceStack src) {
        ServerLevel level = src.getServer().overworld();
        int pass = 0, total = 0;
        try (var in = RiftBrek.class.getResourceAsStream("/riftbrek_probes.json")) {
            JsonArray arr = JsonParser.parseReader(new InputStreamReader(in, StandardCharsets.UTF_8)).getAsJsonArray();
            src.sendSuccess(() -> Component.literal("[RIFTBREK] paste check at origin " + originX + ", " + originZ + " (PASS = expected block found):").withStyle(ChatFormatting.LIGHT_PURPLE), false);
            for (JsonElement e : arr) {
                var o = e.getAsJsonObject();
                BlockPos pos = new BlockPos(originX + o.get("x").getAsInt(), o.get("y").getAsInt(), originZ + o.get("z").getAsInt());
                String want = o.get("block").getAsString();
                level.getChunk(pos.getX() >> 4, pos.getZ() >> 4);   // loads (and generates nothing: chunk exists in the region files)
                String got = BuiltInRegistries.BLOCK.getKey(level.getBlockState(pos).getBlock()).toString();
                total++;
                boolean ok = got.equals(want);
                if (ok) pass++;
                String line = (ok ? "PASS  " : "FAIL  ") + o.get("label").getAsString() + (ok ? "" : "  (found " + got + " at " + pos.toShortString() + ")");
                src.sendSuccess(() -> Component.literal(line).withStyle(ok ? ChatFormatting.GREEN : ChatFormatting.RED), false);
            }
        } catch (Exception ex) {
            src.sendFailure(Component.literal("verify failed: " + ex));
            return 0;
        }
        final int p = pass, t = total;
        src.sendSuccess(() -> Component.literal("[RIFTBREK] " + p + " / " + t + " checks passed.").withStyle(p == t ? ChatFormatting.GREEN : ChatFormatting.RED), false);
        return p;
    }

    @Override
    public void onInitialize() {
        loadConfig();
        ServerLifecycleEvents.SERVER_STARTED.register(server -> {
            applyOrigin(server);
            LOG.info("RIFTBREK Vanguard ready: origin X{} Z{}, forceload={}", originX, originZ, autoForceload);
        });
        CommandRegistrationCallback.EVENT.register((dispatcher, registry, env) -> dispatcher.register(
            Commands.literal("rift").requires(src -> src.permissions().hasPermission(net.minecraft.server.permissions.Permissions.COMMANDS_GAMEMASTER))
                .then(Commands.literal("origin")
                    .then(Commands.argument("x", IntegerArgumentType.integer())
                        .then(Commands.argument("z", IntegerArgumentType.integer()).executes(ctx -> {
                            originX = IntegerArgumentType.getInteger(ctx, "x");
                            originZ = IntegerArgumentType.getInteger(ctx, "z");
                            saveConfig();
                            applyOrigin(ctx.getSource().getServer());
                            ctx.getSource().sendSuccess(() -> Component.literal("RIFTBREK origin set to " + originX + ", " + originZ + " (saved to config/riftbrek.properties; old force-loads removed)"), true);
                            return 1;
                        }))))
                .then(Commands.literal("verify").executes(ctx -> verify(ctx.getSource())))));
    }
}
