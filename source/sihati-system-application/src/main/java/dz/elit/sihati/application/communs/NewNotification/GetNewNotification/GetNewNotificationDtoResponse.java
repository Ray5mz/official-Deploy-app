package dz.elit.sihati.application.communs.NewNotification.GetNewNotification;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class GetNewNotificationDtoResponse {
    private String code;
    private String message;
    private Boolean seen;
    private String patientCode;
    private String type ;
    private LocalDateTime creationDate;
}