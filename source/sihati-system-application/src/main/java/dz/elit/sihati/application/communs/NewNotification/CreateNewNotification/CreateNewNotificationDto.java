package dz.elit.sihati.application.communs.NewNotification.CreateNewNotification;

import dz.elit.sihati.domain.care.enumeration.RequestAppointmentStatus;
import dz.elit.sihati.domain.care.enumeration.RequestCareCoverageStatus;
import dz.elit.sihati.domain.communication.enumeration.NotificationType;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CreateNewNotificationDto {
    @NotBlank(message = "Le message est obligatoire")
    private String message;

    @NotNull(message = "Le type est obligatoire (RA ou RC)")
    private NotificationType type;

    @NotNull(message = "Le patient est obligatoire")
    private Long patientId;

    private Long requestAppointmentId;
    private Long requestCareCoverageId;

    // new — the status to apply on PC1's DB
    private RequestAppointmentStatus requestAppointmentStatus;
    private RequestCareCoverageStatus requestCareCoverageStatus;
}