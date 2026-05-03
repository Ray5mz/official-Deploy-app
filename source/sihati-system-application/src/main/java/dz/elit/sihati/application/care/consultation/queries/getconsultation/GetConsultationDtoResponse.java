package dz.elit.sihati.application.care.consultation.queries.getconsultation;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class GetConsultationDtoResponse {

    private String consultationNumber;
    private String diagnosis;
    private LocalDateTime consultationDate;
}