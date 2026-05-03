package dz.elit.sihati.application.care.TimingDoctor.queries.getbyhealthpro;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class GetTimingDocByHealthProDtoResponse {

    private String code;
    private Integer duration;
    private LocalDateTime timingDoctorDate;
    private String status;
}