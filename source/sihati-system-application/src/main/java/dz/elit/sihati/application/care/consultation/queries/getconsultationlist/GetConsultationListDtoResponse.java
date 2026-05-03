package dz.elit.sihati.application.care.consultation.queries.getconsultationlist;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class GetConsultationListDtoResponse {
    private String code;
    private String diagnostic;
    private Date diagnosticDate;
}
