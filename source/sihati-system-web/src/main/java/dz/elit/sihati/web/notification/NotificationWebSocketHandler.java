package dz.elit.sihati.web.notification;

import com.fasterxml.jackson.databind.ObjectMapper;
import dz.elit.sihati.web.notification.domain.Notification;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import java.util.List;
import java.util.Random;
import java.util.concurrent.CopyOnWriteArrayList;

public class NotificationWebSocketHandler extends TextWebSocketHandler {
    private final ObjectMapper objectMapper = new ObjectMapper();
    private final List<WebSocketSession> webSocketSessions = new CopyOnWriteArrayList<>();
    Random random = new Random();

    @Override
    public void afterConnectionEstablished(WebSocketSession session) throws Exception {
        long idKKpi = (long) (Math.round(2 * 100.0) / 100.0);


        //Creating a Notification Object
        Notification notification = new Notification(idKKpi + "");


        TextMessage message = new TextMessage(objectMapper.writeValueAsString(notification));
        session.sendMessage(message);
        Thread.sleep(1000);
        webSocketSessions.add(session);

    }
}
