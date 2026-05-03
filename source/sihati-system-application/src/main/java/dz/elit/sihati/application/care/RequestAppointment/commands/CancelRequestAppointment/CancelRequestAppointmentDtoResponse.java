package dz.elit.sihati.application.care.RequestAppointment.commands.CancelRequestAppointment;

import dz.elit.sihati.domain.care.enumeration.RequestAppointmentStatus;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CancelRequestAppointmentDtoResponse {
    private String appointmentNumber;
    private RequestAppointmentStatus status;
}
