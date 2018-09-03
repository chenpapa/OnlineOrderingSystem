package la.chopper.util;

import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * @author chentao
 */
public class ImageDemo {
    /**
     * 将图片插入数据库
     */
    public static void readImage2DB() {
        String path = "D:/1.png";
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        FileInputStream fileInputStream;
        try {
            fileInputStream = ImageUtil.readImage(path);
            connection = DBUtils.getConn();
            String sql = "INSERT INTO photo (id,name,photo)VALUES(?,?,?)";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, 1);
            preparedStatement.setString(2, "Tom");
            preparedStatement.setBinaryStream(3, fileInputStream, fileInputStream.available());
            int count = preparedStatement.executeUpdate();
            if (count > 0) {
                System.out.println("插入成功！");
            } else {
                System.out.println("插入失败！");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeConn(connection);
            if (null != preparedStatement) {
                try {
                    preparedStatement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }


    }

    /**
     * 读取数据库中图片
     */
    public static void readDB2Image() {
        String targetPath = "D:/image/1.png";
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        try {
            connection = DBUtils.getConn();
            String sql = "SELECT * FROM photo WHERE id =?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, 1);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                InputStream in = resultSet.getBinaryStream("photo");
                ImageUtil.readBin2Image(in, targetPath);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeConn(connection);
            if (resultSet != null) {
                try {
                    resultSet.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (preparedStatement != null) {
                try {
                    preparedStatement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }

        }
    }

    /**
     * 测试
     *
     * @param args
     */
    public static void main(String[] args) {
        //readImage2DB();
        readDB2Image();
    }
}
