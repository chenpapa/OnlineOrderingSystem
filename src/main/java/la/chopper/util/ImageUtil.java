package la.chopper.util;

import java.io.*;

/**
 * @author chentao
 */
public class ImageUtil {
    /**
     * 读取本地图片获取输入流
     *
     * @param path
     * @return
     * @throws IOException
     */
    public static FileInputStream readImage(String path) throws IOException {
        return new FileInputStream(new File(path));
    }

    /**
     * 读取表中图片获取输出流
     *
     * @param in
     * @param targetPath
     */
    public static void readBin2Image(InputStream in, String targetPath) {
        File file = new File(targetPath);
        String path = targetPath.substring(0, targetPath.lastIndexOf("/"));
        if (!file.exists()) {
            new File(path).mkdir();
        }
        FileOutputStream fileOutputStream = null;
        try {
            fileOutputStream = new FileOutputStream(file);
            int len;
            byte[] buf = new byte[1024];
            while ((len = in.read(buf)) != -1) {
                fileOutputStream.write(buf, 0, len);
            }
            fileOutputStream.flush();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (null != fileOutputStream) {
                try {
                    fileOutputStream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
