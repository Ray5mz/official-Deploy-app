package dz.elit.sihati.infrastructure.notification;

import dz.elit.sihati.application.notification.NotificationDto;
import dz.elit.sihati.application.notification.SendNotificationPort;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.*;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

@Slf4j
@Component
@RequiredArgsConstructor
public class NotificationClient implements SendNotificationPort {

    private final RestTemplate restTemplate;

    @Value("${notification.service.url}")
    private String notificationServiceUrl;

    @Override
    public void send(NotificationDto notification) {
        try {
            HttpHeaders headers = new HttpHeaders();
            headers.setContentType(MediaType.APPLICATION_JSON);
            HttpEntity<NotificationDto> request = new HttpEntity<>(notification, headers);

            ResponseEntity<String> response = restTemplate.exchange(
                    notificationServiceUrl + "/api/production/notification/create",
                    HttpMethod.POST,
                    request,
                    String.class
            );

            log.info("Notification sent successfully: {}", response.getStatusCode());
        } catch (Exception e) {
            log.error("Failed to send notification to Backend B: {}", e.getMessage());
        }
    }
}