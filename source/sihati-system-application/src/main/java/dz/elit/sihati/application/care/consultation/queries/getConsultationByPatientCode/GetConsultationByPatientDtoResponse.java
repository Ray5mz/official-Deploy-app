package dz.elit.sihati.application.care.consultation.queries.getConsultationByPatientCode;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class GetConsultationByPatientDtoResponse {

    private String consultationNumber;
    private LocalDateTime consultationDate;
    private String reasonForConsultation;
    private String diagnosis;
    private String patientCode;

}