package dz.elit.sihati.application.communs.NewNotification.GetByPatient;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class GetNewNotificationsByPatientCodeDtoResponse {
    private Long id;
    private String code;
    private String message;
    private Boolean seen;
    private String type;
    private Long requestAppointmentId;
    private Long requestCareCoverageId;
}