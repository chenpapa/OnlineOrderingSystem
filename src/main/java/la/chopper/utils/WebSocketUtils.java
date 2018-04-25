package la.chopper.utils;

import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.AbstractWebSocketHandler;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * handleTextMessage():处理文本消息类型
 * handleBinaryMessage():处理二进制消息类型
 * handlePongMessage():处理Pong消息类型
 */
public class WebSocketUtils extends AbstractWebSocketHandler {

    private static final Map<Long, WebSocketSession> restaurantWebSocketSession;

    private static final String RESTAURANT_ID = "restaurantId";

    static {
        restaurantWebSocketSession = new HashMap<>();
    }

    @Override
    protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {

    }

    @Override
    public void afterConnectionEstablished(WebSocketSession session) throws Exception {
        String restaurantId = session.getUri().toString().replaceAll("/", "");
        restaurantWebSocketSession.put(Long.valueOf(restaurantId), session);
    }

    @Override
    public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {

    }

    /**
     * 获取餐厅标识
     *
     * @param session
     * @return
     */
    private Long getRestaurantId(WebSocketSession session) {
        try {
            long restaurantId = (long) session.getAttributes().get(RESTAURANT_ID);
            return restaurantId;
        } catch (Exception e) {
            return null;
        }
    }

    /**
     * 发送消息给指定餐厅
     *
     * @param restaurantId
     * @param message
     * @return
     */
    public boolean sendMessageToRestaurant(long restaurantId, TextMessage message) {
        if (restaurantWebSocketSession.get(restaurantId) == null) {
            return false;
        }
        WebSocketSession session = restaurantWebSocketSession.get(restaurantId);
        if (!session.isOpen()) {
            return false;
        }
        try {
            session.sendMessage(message);
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }


}
