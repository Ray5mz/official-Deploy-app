package dz.elit.sihati.application.care.RequestAppointment.commands.update;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.*;

import java.time.LocalDateTime;

@Getter
@Setter
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class UpdateRequestAppointmentDtoResponse {

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
