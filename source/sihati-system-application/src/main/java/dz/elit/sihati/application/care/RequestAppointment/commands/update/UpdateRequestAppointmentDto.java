package dz.elit.sihati.application.care.RequestAppointment.commands.update;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UpdateRequestAppointmentDto {
    private String reason;
   @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd HH:mm")
   private LocalDateTime appointmentDate;
    private String timingdoctorcode;
    private Long timingDoctorId;
}
