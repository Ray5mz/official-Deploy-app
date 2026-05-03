package dz.elit.sihati.application.care.RequestAppointment.commands.createrequestappointement;

import com.fasterxml.jackson.annotation.JsonFormat;
import dz.elit.sihati.application.care.RequestAppointment.commands.update.UpdateRequestAppointmentDtoResponseMedicalCenter;
import dz.elit.sihati.application.care.RequestAppointment.commands.update.UpdateRequestAppointmentDtoResponsePatient;
import dz.elit.sihati.application.care.RequestAppointment.commands.update.UpdateRequestAppointmentDtoResponseSpecialty;
import dz.elit.sihati.application.care.RequestAppointment.commands.update.UpdateRequestAppointmentDtoResponseTimingDoctor;
import lombok.*;

import java.time.LocalDateTime;

@Getter
@Setter
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class CreateRequestAppointmentDtoResponse {

    private String appointmentNumber;
    private String reason;

    private Integer duration;
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd HH:mm")
    private LocalDateTime appointmentDate;
    private String status;

    private UpdateRequestAppointmentDtoResponsePatient patient;
    private UpdateRequestAppointmentDtoResponseTimingDoctor timingDoctor;
    private UpdateRequestAppointmentDtoResponseMedicalCenter medicalCenter;
    private UpdateRequestAppointmentDtoResponseSpecialty specialty;
}