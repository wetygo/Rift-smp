package riftbrek;

import com.mojang.brigadier.arguments.IntegerArgumentType;
import net.fabricmc.api.ModInitializer;
import net.fabricmc.fabric.api.command.v2.CommandRegistrationCallback;
import net.fabricmc.fabric.api.event.lifecycle.v1.ServerLifecycleEvents;
import net.fabricmc.loader.api.FabricLoader;
import net.minecraft.commands.CommandSourceStack;
import net.minecraft.commands.Commands;
import net.minecraft.network.chat.Component;
import net.minecraft.server.MinecraftServer;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Properties;

/** RIFTBREK Vanguard: embeds the headquarters data pack (data/riftbrek, tick+load tags) and wires it up automatically. */
public class RiftBrek implements ModInitializer {
    public static final Logger LOG = LoggerFactory.getLogger("riftbrek");
    private static int originX = 8192, originZ = 8192;
    private static boolean autoForceload = true;

    private static void loadConfig() {
        Path p = FabricLoader.getInstance().getConfigDir().resolve("riftbrek.properties");
        Properties pr = new Properties();
        try {
            if (Files.exists(p)) {
                try (var in = Files.newInputStream(p)) { pr.load(in); }
            } else {
                pr.setProperty("originX", "8192");
                pr.setProperty("originZ", "8192");
                pr.setProperty("autoForceload", "true");
                try (var out = Files.newOutputStream(p)) {
                    pr.store(out, "RIFTBREK: world X/Z where the base was pasted (schematic local 0,0). Must match the region files you installed.");
                }
            }
            originX = Integer.parseInt(pr.getProperty("originX", "8192").trim());
            originZ = Integer.parseInt(pr.getProperty("originZ", "8192").trim());
            autoForceload = Boolean.parseBoolean(pr.getProperty("autoForceload", "true").trim());
        } catch (Exception e) {
            LOG.warn("riftbrek.properties unreadable, using defaults ({}, {}): {}", originX, originZ, e.toString());
        }
    }

    private static void run(MinecraftServer s, String cmd) {
        s.getCommands().performPrefixedCommand(s.createCommandSourceStack().withSuppressedOutput(), cmd);
    }

    private static void applyOrigin(MinecraftServer s) {
        run(s, "data modify storage riftbrek:cfg origin set value {x:" + originX + ",z:" + originZ + "}");
        if (autoForceload) run(s, "function riftbrek:admin/forceload");
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
                            applyOrigin(ctx.getSource().getServer());
                            ctx.getSource().sendSuccess(() -> Component.literal("RIFTBREK origin set to " + originX + ", " + originZ), true);
                            return 1;
                        }))))
                .then(Commands.literal("verify").executes(ctx -> {
                    run(ctx.getSource().getServer(), "function riftbrek:admin/verify");
                    return 1;
                }))));
    }
}
