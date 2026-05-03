package dz.elit.sihati.application.care.RequestAppointment.commands.createrequestappointement;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.*;

import java.time.LocalDateTime;

@Getter
@Setter
@Data
@NoArgsConstructor
@AllArgsConstructor

public class CreateRequestAppointmentDto {
    private String raison;
    private String patientCode;
    private Integer duration;
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd HH:mm")
    private LocalDateTime requestappointmentDate;
    private String TimingDoctorCode;
    private Long timingDoctorId;
}
