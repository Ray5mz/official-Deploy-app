package dz.elit.sihati.application.notification;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class NotificationDto {
    private String subject;
    private String content;
    private Boolean hasEmail;
    private Boolean seenGroupeNotifications;
    private Boolean seenNotification;
    private String user;
}