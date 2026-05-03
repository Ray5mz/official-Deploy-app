package dz.elit.sihati.web.notification.config;

import dz.elit.sihati.web.notification.NotificationWebSocketHandler;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.socket.WebSocketHandler;
import org.springframework.web.socket.config.annotation.EnableWebSocket;
import org.springframework.web.socket.config.annotation.WebSocketConfigurer;
import org.springframework.web.socket.config.annotation.WebSocketHandlerRegistry;

@Configuration
@EnableWebSocket
public class WebSocketConfig implements WebSocketConfigurer {

    @Override
    public void registerWebSocketHandlers(WebSocketHandlerRegistry registry) {
        registry.addHandler(notificationWebSocketHandler(), "/api/production/stocks")
                .setAllowedOriginPatterns("*")
                .withSockJS();
    }

    @Bean
    public WebSocketHandler notificationWebSocketHandler() {
        return new NotificationWebSocketHandler();
    }
}
