package dz.elit.sihati.application.care.RequestAppointment.GetByPatientCode;

import dz.elit.sihati.domain.care.enumeration.RequestAppointmentStatus;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;
@Data
@NoArgsConstructor
@AllArgsConstructor

public class GetRequestAppointmentByPatientCodeDtoResponse {
    private String appointmentNumber;
    private String reason;
    private LocalDateTime appointmentDate;
    private RequestAppointmentStatus status;
    private String timingdoctorcode;
    private String patientcode;
    private String specialtyName;
    private String doctorName;        // ← ADD THIS
    private String medicalCenterName;
}
