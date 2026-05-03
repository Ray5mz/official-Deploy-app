package dz.elit.sihati.application.communs.NewNotification.CreateNewNotification;

import dz.elit.sihati.domain.communication.enumeration.NotificationType;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class CreateNewNotificationDtoResponse {
    private Long id;
    private String code;
    private String message;
    private Boolean seen;
    private NotificationType type;
    private Long requestAppointmentId;
    private Long requestCareCoverageId;
    private CreateNewNotificationDtoResponsePatient patient;
}