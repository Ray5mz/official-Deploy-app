package dz.elit.sihati.application.communs.NewNotification.GetLatestOne;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class GetLatestNotificationDtoResponse {
    private Long id;
    private String code;
    private String message;
    private Boolean seen;
    private String type;
    private Long requestAppointmentId;
    private Long requestCareCoverageId;
    private java.time.LocalDateTime creationDate;
}