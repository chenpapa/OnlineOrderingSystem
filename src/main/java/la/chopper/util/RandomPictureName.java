package la.chopper.util;

import java.util.UUID;

/**
 * @author chentao
 */
public class RandomPictureName {

    public static String getUUID() {
        String uuid = UUID.randomUUID().toString();
        return uuid.replace("\\-", "");
    }
}
