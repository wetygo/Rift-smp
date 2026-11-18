import java.io.*;
import java.nio.*;
import java.nio.file.*;
import java.nio.file.StandardCopyOption;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * RIFTBREK base merger (v2) - adds the base's chunks into your EXISTING world without touching your other chunks.
 *   java MergeBase.java <your world folder> <base_files folder> [--dry-run] [--replace-existing]
 *
 * Safety rules
 *  - It first PLANS everything (reads and validates every file). Nothing is written if any file is corrupt.
 *  - If YOUR world already has a different chunk where the base needs one, it STOPS and lists how many, changing nothing.
 *    Re-run with --replace-existing only if you accept losing those chunks (each is backed up first).
 *  - Chunks that are already identical to the base are not collisions (re-running is safe, nothing is rewritten).
 *  - --dry-run writes nothing at all (no folders, no files).
 *  - Changes are applied with rollback: if anything fails half way, every changed file is restored and new files removed.
 *  - Backups go to <world>/riftbrek_backup_<date-time>/ (a new folder every run - earlier backups are never overwritten).
 * The base occupies the WHOLE area X 8192..10079, Z 8192..8959 (1888 x 768 blocks, all heights). Chunks are replaced as whole 16x16 columns.
 */
public class MergeBase {
    static final int SECTOR = 4096;
    static class Op { String sub, name; Path src, target, tmp; boolean isNew; byte[][] merged; int[] ts; int added, same, replaced; List<String> repl = new ArrayList<>(); }

    static byte[][] read(Path p, int[] ts) throws IOException {
        byte[][] out = new byte[1024][];
        byte[] d = Files.readAllBytes(p);
        if (d.length < 8192 || d.length % SECTOR != 0) throw new IOException("corrupt or truncated region file: " + p);
        ByteBuffer b = ByteBuffer.wrap(d);
        for (int i = 0; i < 1024; i++) {
            int e = b.getInt(i * 4);
            ts[i] = b.getInt(4096 + i * 4);
            int off = e >>> 8, cnt = e & 0xFF;
            if (off == 0 || cnt == 0) continue;
            if ((long) (off + cnt) * SECTOR > d.length) throw new IOException("corrupt chunk table in " + p);
            int len = b.getInt(off * SECTOR);
            int comp = d[off * SECTOR + 4] & 0xFF;
            if (comp > 127) throw new IOException("chunk stored externally (.mcc) in " + p + " - not supported");
            if (len < 2 || off * SECTOR + 4 + len > d.length) throw new IOException("corrupt chunk in " + p);
            out[i] = Arrays.copyOfRange(d, off * SECTOR, off * SECTOR + 4 + len);
        }
        return out;
    }

    static void write(Path p, byte[][] ch, int[] ts) throws IOException {
        ByteArrayOutputStream body = new ByteArrayOutputStream();
        ByteBuffer hdr = ByteBuffer.allocate(8192);
        int sector = 2;
        for (int i = 0; i < 1024; i++) {
            if (ch[i] == null) continue;
            int pad = (SECTOR - ch[i].length % SECTOR) % SECTOR;
            int cnt = (ch[i].length + pad) / SECTOR;
            hdr.putInt(i * 4, (sector << 8) | cnt);
            hdr.putInt(4096 + i * 4, ts[i]);
            body.write(ch[i]); body.write(new byte[pad]);
            sector += cnt;
        }
        try (OutputStream o = Files.newOutputStream(p)) { o.write(hdr.array()); body.writeTo(o); }
    }

    public static void main(String[] a) throws Exception {
        if (a.length < 2) { System.out.println("usage: java MergeBase.java <world folder> <base_files folder> [--dry-run] [--replace-existing]"); return; }
        Path world = Paths.get(a[0]), base = Paths.get(a[1]);
        boolean dry = Arrays.asList(a).contains("--dry-run"), force = Arrays.asList(a).contains("--replace-existing");
        int failAfter = Integer.getInteger("fail.after", -1);   // test hook only
        if (!Files.isDirectory(world.resolve("region"))) { System.out.println("ERROR: " + world + " has no 'region' folder - is that your world folder?"); return; }

        // ---------- PLAN (read-only) ----------
        List<Op> ops = new ArrayList<>();
        int minX = Integer.MAX_VALUE, maxX = Integer.MIN_VALUE, minZ = Integer.MAX_VALUE, maxZ = Integer.MIN_VALUE;
        try {
            for (String sub : new String[]{"region", "entities"}) {
                Path sd = base.resolve(sub);
                if (!Files.isDirectory(sd)) continue;
                List<Path> files = new ArrayList<>();
                try (var s = Files.list(sd)) { s.filter(f -> f.getFileName().toString().matches("r\\.-?\\d+\\.-?\\d+\\.mca")).sorted().forEach(files::add); }
                for (Path f : files) {
                    Op o = new Op(); o.sub = sub; o.name = f.getFileName().toString(); o.src = f; o.target = world.resolve(sub).resolve(o.name);
                    int[] ts1 = new int[1024];
                    byte[][] src = read(f, ts1);
                    String[] pr = o.name.split("\\.");
                    int rx = Integer.parseInt(pr[1]), rz = Integer.parseInt(pr[2]);
                    boolean exists = Files.exists(o.target);
                    byte[][] dst = new byte[1024][]; int[] ts2 = new int[1024];
                    if (exists) dst = read(o.target, ts2);
                    o.isNew = !exists;
                    for (int i = 0; i < 1024; i++) {
                        if (src[i] == null) continue;
                        int cx = rx * 32 + (i & 31), cz = rz * 32 + (i >> 5);
                        if (sub.equals("region")) { minX = Math.min(minX, cx * 16); maxX = Math.max(maxX, cx * 16 + 15); minZ = Math.min(minZ, cz * 16); maxZ = Math.max(maxZ, cz * 16 + 15); }
                        if (dst[i] == null) o.added++;
                        else if (Arrays.equals(dst[i], src[i])) { o.same++; continue; }
                        else { o.replaced++; if (o.repl.size() < 5) o.repl.add("chunk " + cx + "," + cz + " (blocks " + cx * 16 + ".." + (cx * 16 + 15) + ", " + cz * 16 + ".." + (cz * 16 + 15) + ")"); }
                        dst[i] = src[i]; ts2[i] = ts1[i];
                    }
                    o.merged = dst; o.ts = ts2;
                    ops.add(o);
                }
            }
        } catch (IOException e) {
            System.out.println("ABORTED - NOTHING WAS CHANGED: " + e.getMessage());
            return;
        }
        int nNew = 0, nMerge = 0, add = 0, same = 0, repl = 0, nSame = 0;
        for (Op o : ops) {
            add += o.added; same += o.same; repl += o.replaced;
            boolean change = o.added + o.replaced > 0;
            String what = !change ? "already installed" : o.isNew ? "new file" : "merge: +" + o.added + " chunks, " + o.replaced + " replaced";
            System.out.println("  " + o.sub + "/" + o.name + "  " + what);
            if (!change) nSame++; else if (o.isNew) nNew++; else nMerge++;
        }
        System.out.println("Base area (region chunks): X " + minX + ".." + maxX + ", Z " + minZ + ".." + maxZ);
        System.out.println("Plan: " + nNew + " new files, " + nMerge + " merged files, " + nSame + " already identical; chunks: " + add + " to add, " + repl + " to replace, " + same + " already identical.");
        if (repl > 0 && !force) {
            System.out.println("\nSTOPPED - NOTHING WAS CHANGED. Your world already has " + repl + " different chunks where the base needs to go, e.g.:");
            for (Op o : ops) for (String s : o.repl) System.out.println("   " + o.sub + "/" + o.name + " " + s);
            System.out.println("Those chunks hold your own terrain/builds. Either pick another origin (ask for a re-export), or accept losing them and re-run with --replace-existing (they are backed up first).");
            return;
        }
        if (add + repl == 0) { System.out.println("Nothing to do - the base is already installed here."); return; }
        if (dry) { System.out.println("DRY RUN - nothing was written (no files, no folders)."); return; }

        // ---------- APPLY (stage everything first, then swap with rollback) ----------
        String stamp = new SimpleDateFormat("yyyyMMdd-HHmmss").format(new Date());
        Path bk = world.resolve("riftbrek_backup_" + stamp);
        for (int n = 2; Files.exists(bk); n++) bk = world.resolve("riftbrek_backup_" + stamp + "_" + n);
        List<Path> createdDirs = new ArrayList<>();
        List<Op> done = new ArrayList<>();
        List<Op> todo = new ArrayList<>();
        for (Op o : ops) if (o.added + o.replaced > 0) todo.add(o);
        try {
            for (Op o : todo) {                                   // stage: every new file fully written next to its target
                Path dir = world.resolve(o.sub);
                if (!Files.isDirectory(dir)) { Files.createDirectories(dir); createdDirs.add(dir); }
                o.tmp = dir.resolve(o.name + ".riftnew");
                write(o.tmp, o.merged, o.ts);
            }
            Files.createDirectories(bk);
            int k = 0;
            for (Op o : todo) {
                if (!o.isNew) {
                    Path b = bk.resolve(o.sub).resolve(o.name);
                    Files.createDirectories(b.getParent());
                    Files.copy(o.target, b);                     // fresh folder per run: never overwrites an older backup
                }
                Files.move(o.tmp, o.target, StandardCopyOption.REPLACE_EXISTING);
                done.add(o);
                if (failAfter >= 0 && ++k >= failAfter) throw new IOException("simulated failure (test hook)");
            }
            try (PrintWriter w = new PrintWriter(bk.resolve("MERGE_LOG.txt").toFile())) {
                w.println("RIFTBREK merge " + stamp + ": " + add + " chunks added, " + repl + " replaced");
                for (Op o : todo) w.println(o.sub + "/" + o.name + (o.isNew ? " (new)" : " (backed up here)"));
            }
            System.out.println("DONE. " + add + " chunks added, " + repl + " replaced. Backups of changed files: " + bk);
            System.out.println("To undo: close Minecraft, copy the files in that backup folder back over the world's region/entities, and delete files that had no backup (new files listed in MERGE_LOG.txt).");
        } catch (Exception e) {
            System.out.println("FAILED (" + e.getMessage() + ") - rolling back...");
            for (int i = done.size() - 1; i >= 0; i--) {
                Op o = done.get(i);
                try {
                    if (o.isNew) Files.deleteIfExists(o.target);
                    else Files.copy(bk.resolve(o.sub).resolve(o.name), o.target, StandardCopyOption.REPLACE_EXISTING);
                } catch (IOException x) { System.out.println("  could not restore " + o.target + ": " + x.getMessage() + " - restore it from " + bk); }
            }
            for (Op o : todo) try { if (o.tmp != null) Files.deleteIfExists(o.tmp); } catch (IOException ignore) {}
            for (Path d : createdDirs) try { Files.deleteIfExists(d); } catch (IOException ignore) {}
            System.out.println("Rolled back. Your world is as it was before (backup folder kept: " + bk + ").");
        }
    }
}
