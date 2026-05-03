package dz.elit.sihati.application.care.TimingDoctor.queries.getlistbyspe;

import dz.elit.sihati.domain.care.enumeration.TimingDoctorStatus;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor

public class GetDoctorTimingSpeDtoResponse {

    private Long id;
    private Integer duration;
    private LocalDateTime timingDoctorDate;
    private TimingDoctorStatus timingDoctorStatus;
    private String speciality;
    private String doctorName;
    private String medicalCenterName;
    private String medicalCenterAddress;

}
