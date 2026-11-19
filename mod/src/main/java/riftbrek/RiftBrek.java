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
import net.minecraft.world.level.ChunkPos;
import net.minecraft.world.level.storage.LevelResource;
import it.unimi.dsi.fastutil.longs.LongOpenHashSet;
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
    private static int cityX = 12288, cityZ = 8192;      // Ithaca City origin (world X/Z of its local 0,0)
    private static boolean autoCity = true;

    private static Path cfgPath() { return FabricLoader.getInstance().getConfigDir().resolve("riftbrek.properties"); }

    private static void saveConfig() {
        Properties pr = new Properties();
        pr.setProperty("originX", Integer.toString(originX));
        pr.setProperty("originZ", Integer.toString(originZ));
        pr.setProperty("autoForceload", Boolean.toString(autoForceload));
        pr.setProperty("cityX", Integer.toString(cityX));
        pr.setProperty("cityZ", Integer.toString(cityZ));
        pr.setProperty("autoCity", Boolean.toString(autoCity));
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
                cityX = Integer.parseInt(pr.getProperty("cityX", "12288").trim());
                cityZ = Integer.parseInt(pr.getProperty("cityZ", "8192").trim());
                autoCity = Boolean.parseBoolean(pr.getProperty("autoCity", "true").trim());
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

    // ---- force-load bookkeeping: the mod only ever removes chunks it added itself (recorded per world) ----
    private static Path trackFile(MinecraftServer s) { return s.getWorldPath(LevelResource.ROOT).resolve("riftbrek_forceloads.json"); }

    private static LongOpenHashSet readTracked(MinecraftServer s) {
        LongOpenHashSet set = new LongOpenHashSet();
        try {
            Path f = trackFile(s);
            if (Files.exists(f)) {
                JsonArray arr = JsonParser.parseString(Files.readString(f)).getAsJsonObject().getAsJsonArray("chunks");
                for (JsonElement e : arr) set.add(e.getAsLong());
            }
        } catch (Exception e) { LOG.warn("could not read riftbrek_forceloads.json: {}", e.toString()); }
        return set;
    }

    private static void writeTracked(MinecraftServer s, LongOpenHashSet set) {
        try {
            JsonArray arr = new JsonArray();
            for (long l : set) arr.add(l);
            var o = new com.google.gson.JsonObject();
            o.addProperty("note", "chunks force-loaded BY the RIFTBREK mod (only these are ever removed)");
            o.add("chunks", arr);
            Files.writeString(trackFile(s), o.toString());
        } catch (Exception e) { LOG.warn("could not write riftbrek_forceloads.json: {}", e.toString()); }
    }

    private static void addRects(LongOpenHashSet want, String resource, int ox, int oz) throws Exception {
        try (var in = RiftBrek.class.getResourceAsStream(resource)) {
            if (in == null) return;
            for (JsonElement e : JsonParser.parseReader(new InputStreamReader(in, StandardCharsets.UTF_8)).getAsJsonArray()) {
                var o = e.getAsJsonObject();
                int x0 = ox + o.get("x0").getAsInt(), x1 = ox + o.get("x1").getAsInt();
                int z0 = oz + o.get("z0").getAsInt(), z1 = oz + o.get("z1").getAsInt();
                for (int cx = x0 >> 4; cx <= x1 >> 4; cx++)
                    for (int cz = z0 >> 4; cz <= z1 >> 4; cz++) want.add(ChunkPos.asLong(cx, cz));
            }
        }
    }

    private static LongOpenHashSet wantedChunks() throws Exception {
        LongOpenHashSet want = new LongOpenHashSet();
        addRects(want, "/riftbrek_forceload.json", originX, originZ);
        if (autoCity) addRects(want, "/riftbrek_city_forceload.json", cityX, cityZ);
        return want;
    }

    /** Stores the origin for the data pack, un-forces ONLY the chunks this mod forced before, then forces the new set
     *  (chunks that some admin/another mod had already force-loaded are left alone and never recorded as ours). */
    private static void applyOrigin(MinecraftServer s) {
        ServerLevel level = s.overworld();
        LongOpenHashSet mine = readTracked(s);
        for (long l : mine) level.setChunkForced(ChunkPos.getX(l), ChunkPos.getZ(l), false);
        mine.clear();
        run(s, "data modify storage riftbrek:cfg origin set value {x:" + originX + ",z:" + originZ + "}");
        if (autoForceload) {
            try {
                var already = level.getForceLoadedChunks();
                for (long l : wantedChunks()) {
                    if (already.contains(l)) continue;           // someone else's force-load: do not touch, do not record
                    level.setChunkForced(ChunkPos.getX(l), ChunkPos.getZ(l), true);
                    mine.add(l);
                }
            } catch (Exception e) { LOG.error("force-load failed: {}", e.toString()); }
        }
        writeTracked(s, mine);
    }

    /** Own paste check: loads each probe chunk itself, so the result does not depend on where the player stands. */
    private static int verify(CommandSourceStack src, String probes, int ox, int oz, String title) {
        ServerLevel level = src.getServer().overworld();
        int pass = 0, total = 0;
        try (var in = RiftBrek.class.getResourceAsStream(probes)) {
            JsonArray arr = JsonParser.parseReader(new InputStreamReader(in, StandardCharsets.UTF_8)).getAsJsonArray();
            src.sendSuccess(() -> Component.literal("[RIFTBREK] " + title + " paste check at origin " + ox + ", " + oz + " (PASS = expected block found):").withStyle(ChatFormatting.LIGHT_PURPLE), false);
            for (JsonElement e : arr) {
                var o = e.getAsJsonObject();
                BlockPos pos = new BlockPos(ox + o.get("x").getAsInt(), o.get("y").getAsInt(), oz + o.get("z").getAsInt());
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
                .then(Commands.literal("city")
                    .then(Commands.argument("x", IntegerArgumentType.integer())
                        .then(Commands.argument("z", IntegerArgumentType.integer()).executes(ctx -> {
                            cityX = IntegerArgumentType.getInteger(ctx, "x");
                            cityZ = IntegerArgumentType.getInteger(ctx, "z");
                            saveConfig();
                            applyOrigin(ctx.getSource().getServer());
                            ctx.getSource().sendSuccess(() -> Component.literal("Ithaca City origin set to " + cityX + ", " + cityZ + " (saved)"), true);
                            return 1;
                        }))))
                .then(Commands.literal("verify")
                    .executes(ctx -> verify(ctx.getSource(), "/riftbrek_probes.json", originX, originZ, "RIFTBREK HQ"))
                    .then(Commands.literal("city").executes(ctx -> verify(ctx.getSource(), "/riftbrek_city_probes.json", cityX, cityZ, "Ithaca City"))))));
    }
}
