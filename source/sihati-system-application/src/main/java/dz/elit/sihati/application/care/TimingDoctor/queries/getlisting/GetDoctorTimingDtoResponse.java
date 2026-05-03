package dz.elit.sihati.application.care.TimingDoctor.queries.getlisting;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class GetDoctorTimingDtoResponse {
    private Integer duration;
    private LocalDateTime appointment_date;
    private  String status;
}
