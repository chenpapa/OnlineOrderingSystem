package la.chopper.util;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import org.apache.commons.lang.StringUtils;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

/**
 * @author chentao
 * @Description 画制定logo和制定描述的二维码
 */
public class QRCodeUtils {
    /**
     * 默认是黑色
     */
    private static final int BLACK = 0xFF000000;
    /**
     * 背景颜色
     */
    private static final int WHITE = 0xFFFFFFFF;
    /**
     * 二维码宽
     */
    private static final int WIDTH = 400;
    /**
     * 二维码高
     */
    private static final int HEIGHT = 400;
    /**
     * 最大长度
     */
    private static final int MAX_WIDTH = 399;

    /**
     * 用于设置QR二维码参数
     */
    private static Map<EncodeHintType, Object> hints = new HashMap<EncodeHintType, Object>() {
        private static final long serialVersionUID = 1L;

        {
            /**
             * 设置QR二维码的纠错级别（H为最高级别）具体级别信息
             */
            put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.H);
            /**
             * 设置编码方式
             */
            put(EncodeHintType.CHARACTER_SET, "utf-8");
            put(EncodeHintType.MARGIN, 0);
        }
    };

    public static void main(String[] args) {
        File logoFile = new File("D://a7fedfa29fb24996b0f84441e7707c44.jpg");
        File QrCodeFile = new File("D://05.png");
        String url = "http://192.168.1.101:8080/restaurant/QRCode/1000/1";
        String note = "一号桌";
        drawLogoQRCode(logoFile, QrCodeFile, url, note);
    }

    /**
     * 生成带logo的二维码图片
     *
     * @param logoFile
     * @param codeFile
     * @param qrUrl
     * @param note
     */
    private static void drawLogoQRCode(File logoFile, File codeFile, String qrUrl, String note) {
        try {
            MultiFormatWriter multiFormatWriter = new MultiFormatWriter();
            /**
             * 参数顺序分别为：编码内容，编码类型，生成图片宽度，生成图片高度，设置参数
             */
            BitMatrix bitMatrix = multiFormatWriter.encode(qrUrl, BarcodeFormat.QR_CODE, WIDTH, HEIGHT, hints);
            BufferedImage bufferedImage = new BufferedImage(WIDTH, HEIGHT, BufferedImage.TYPE_INT_RGB);

            /**
             * 开始利用二维码数据创建Bitmap图片，分别设为黑（0xFFFFFFFF）白（0xFF000000）两色
             */
            for (int x = 0; x < WIDTH; x++) {
                for (int y = 0; y < HEIGHT; y++) {
                    bufferedImage.setRGB(x, y, bitMatrix.get(x, y) ? BLACK : WHITE);
                }
            }

            int width = bufferedImage.getWidth();
            int height = bufferedImage.getHeight();
            if (Objects.nonNull(logoFile) && logoFile.exists()) {
                /**
                 * 构建绘图对象
                 */
                Graphics2D graphics2D = bufferedImage.createGraphics();
                /**
                 * 读取Logo图片
                 */
                BufferedImage logo = ImageIO.read(logoFile);
                /**
                 * 开始绘制logo图片
                 */
                graphics2D.drawImage(logo, width * 2 / 5, height * 2 / 5, width * 2 / 10, height * 2 / 10, null);
                graphics2D.dispose();
                logo.flush();
            }

            /**
             * 自定义文本描述
             */
            if (StringUtils.isNotEmpty(note)) {
                /**
                 * 新的图片，把带logo的二维码下面加上文字
                 */
                BufferedImage outImage = new BufferedImage(400, 445, BufferedImage.TYPE_4BYTE_ABGR);
                Graphics2D out = outImage.createGraphics();
                /**
                 * 画二维码到新的面板
                 */
                out.drawImage(bufferedImage, 0, 0, bufferedImage.getWidth(), bufferedImage.getHeight(), null);
                /**
                 * 画文字到新的面板
                 */
                out.setColor(Color.BLACK);
                /**
                 * 字体、字型、字号
                 */
                out.setFont(new Font("楷体", Font.BOLD, 30));
                int strWidth = out.getFontMetrics().stringWidth(note);
                if (strWidth > MAX_WIDTH) {
                    /**
                     * 长度过长就截取前面部分,长度过长就换行
                     */
                    String note1 = note.substring(0, note.length() / 2);
                    String note2 = note.substring(note.length() / 2, note.length());
                    int strWidth1 = out.getFontMetrics().stringWidth(note1);
                    int strWidth2 = out.getFontMetrics().stringWidth(note2);
                    out.drawString(note1, 200 - strWidth1 / 2, height + (outImage.getHeight() - height) / 2 + 12);
                    BufferedImage outImage2 = new BufferedImage(400, 485, BufferedImage.TYPE_4BYTE_ABGR);
                    Graphics2D graphics2D = outImage2.createGraphics();
                    graphics2D.drawImage(outImage, 0, 0, outImage.getWidth(), outImage.getHeight(), null);
                    graphics2D.setColor(Color.BLACK);
                    /**
                     * 字体、字型、字号
                     */
                    graphics2D.setFont(new Font("宋体", Font.BOLD, 30));
                    graphics2D.drawString(note2, 200 - strWidth2 / 2, outImage.getHeight() + (outImage2.getHeight() - outImage.getHeight()) / 2 + 5);
                    graphics2D.dispose();
                    outImage2.flush();
                    outImage = outImage2;
                } else {
                    /**
                     * 画文字
                     */
                    out.drawString(note, 200 - strWidth / 2, height + (outImage.getHeight() - height) / 2 + 12);
                }
                out.dispose();
                outImage.flush();
                bufferedImage = outImage;
            }

            bufferedImage.flush();

            ImageIO.write(bufferedImage, "png", codeFile);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
