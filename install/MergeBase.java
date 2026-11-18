import java.io.*;
import java.nio.*;
import java.nio.file.*;
import java.util.*;

/**
 * RIFTBREK base merger - adds the base's chunks INTO your existing world without replacing your other chunks.
 * Needs only Java 21 (the same Java Minecraft uses):   java MergeBase.java <your world folder> <base folder> [--dry-run]
 *   <base folder> = the folder that contains the 'region' and 'entities' folders from the RIFTBREK zip.
 * For every base region file: if your world has no such file it is copied; if it has one, only the chunks the base owns are written
 * into it (your other chunks in that file are kept untouched). A backup copy  r.X.Z.mca.riftbak  is kept next to each changed file.
 * A chunk that already exists in your world at a base position IS replaced (that is where the base sits) and is reported.
 */
public class MergeBase {
    static final int SECTOR = 4096;

    static byte[][] read(Path p, int[] ts) throws IOException {
        byte[][] out = new byte[1024][];
        byte[] d = Files.readAllBytes(p);
        if (d.length < 8192) return out;
        ByteBuffer b = ByteBuffer.wrap(d);
        for (int i = 0; i < 1024; i++) {
            int e = b.getInt(i * 4);
            ts[i] = b.getInt(4096 + i * 4);
            int off = e >>> 8, cnt = e & 0xFF;
            if (off == 0 || cnt == 0) continue;
            if (off * SECTOR + 5 > d.length) throw new IOException("corrupt region file " + p);
            int len = b.getInt(off * SECTOR);
            int comp = d[off * SECTOR + 4] & 0xFF;
            if (comp > 127) throw new IOException("chunk stored externally (.mcc) in " + p + " - not supported, aborting before changing anything");
            if (len < 1 || off * SECTOR + 4 + len > d.length) throw new IOException("corrupt chunk in " + p);
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
        Path tmp = p.resolveSibling(p.getFileName() + ".tmp");
        try (OutputStream o = Files.newOutputStream(tmp)) { o.write(hdr.array()); body.writeTo(o); }
        Files.move(tmp, p, StandardCopyOption.REPLACE_EXISTING);
    }

    public static void main(String[] a) throws Exception {
        if (a.length < 2) { System.out.println("usage: java MergeBase.java <world folder> <base folder> [--dry-run]"); return; }
        Path world = Paths.get(a[0]), base = Paths.get(a[1]);
        boolean dry = a.length > 2 && a[2].equals("--dry-run");
        if (!Files.isDirectory(world.resolve("region"))) { System.out.println("ERROR: " + world + " has no 'region' folder - is that your world folder?"); return; }
        int copied = 0, merged = 0, added = 0, replaced = 0;
        for (String sub : new String[]{"region", "entities"}) {
            Path sd = base.resolve(sub);
            if (!Files.isDirectory(sd)) continue;
            Files.createDirectories(world.resolve(sub));
            List<Path> files = new ArrayList<>();
            try (var s = Files.list(sd)) { s.filter(f -> f.getFileName().toString().endsWith(".mca")).sorted().forEach(files::add); }
            for (Path f : files) {
                Path t = world.resolve(sub).resolve(f.getFileName());
                int[] ts1 = new int[1024];
                byte[][] src = read(f, ts1);
                if (!Files.exists(t)) {
                    System.out.println("  new   " + sub + "/" + f.getFileName());
                    if (!dry) Files.copy(f, t);
                    copied++; continue;
                }
                int[] ts2 = new int[1024];
                byte[][] dst = read(t, ts2);
                int ad = 0, rp = 0;
                for (int i = 0; i < 1024; i++) {
                    if (src[i] == null) continue;
                    if (dst[i] == null) ad++; else rp++;
                    dst[i] = src[i]; ts2[i] = ts1[i];
                }
                System.out.println("  merge " + sub + "/" + f.getFileName() + ": +" + ad + " chunks added, " + rp + " existing chunks replaced");
                if (!dry) {
                    Files.copy(t, t.resolveSibling(t.getFileName() + ".riftbak"), StandardCopyOption.REPLACE_EXISTING);
                    write(t, dst, ts2);
                }
                merged++; added += ad; replaced += rp;
            }
        }
        System.out.println((dry ? "DRY RUN - nothing written. " : "Done. ") + copied + " files copied, " + merged + " merged (" + added + " chunks added, " + replaced + " replaced).");
        if (replaced > 0) System.out.println("NOTE: " + replaced + " chunks that already existed where the base sits were replaced (your backup is the .riftbak files and your own world backup).");
    }
}
