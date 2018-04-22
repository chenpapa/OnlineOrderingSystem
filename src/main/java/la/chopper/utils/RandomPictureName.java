package la.chopper.utils;

import java.util.UUID;

public class RandomPictureName {

    public static String getUUID() {
        String uuid = UUID.randomUUID().toString();
        return uuid.replace("\\-", "");
    }
}
