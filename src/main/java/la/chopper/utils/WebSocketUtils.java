package la.chopper.utils;

import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.AbstractWebSocketHandler;

import java.io.IOException;

/**
 * handleTextMessage():处理文本消息类型
 * handleBinaryMessage():处理二进制消息类型
 * handlePongMessage():处理Pong消息类型
 */
public class WebSocketUtils extends AbstractWebSocketHandler {

    private WebSocketSession session;

    public WebSocketSession getSession() {
        return session;
    }

    public void setSession(WebSocketSession session) {
        this.session = session;
    }

    @Override
    protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {

        //处理文本消息
        System.out.println("收到消息：" + message.getPayload());

    }

    @Override
    public void afterConnectionEstablished(WebSocketSession session) throws Exception {
        System.out.println("建立连接");
        setSession(session);
    }

    @Override
    public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {

    }

    public void sendMessage(TextMessage message) throws IOException{
        getSession().sendMessage(message);
    }

}
