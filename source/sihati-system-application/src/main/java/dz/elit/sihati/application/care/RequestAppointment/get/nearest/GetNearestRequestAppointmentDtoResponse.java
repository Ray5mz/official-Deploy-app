package dz.elit.sihati.application.care.RequestAppointment.get.nearest;

import dz.elit.sihati.domain.care.enumeration.RequestAppointmentStatus;

import java.time.LocalDateTime;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class GetNearestRequestAppointmentDtoResponse {
    private String appointmentNumber;
    private String reason;
    private LocalDateTime appointmentDate;
    private RequestAppointmentStatus status;
    private String timingdoctorcode;
    private String patientcode;
    private String specialtyName;
    private String doctorName;
    private String medicalCenterName;
}
