package dz.elit.sihati.application.care.ConstanteVitale.queries.GetConstanteVitaleByPatientCode;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class GetConstanteVitaleByPatientDtoResponse {

    private String constantevitaleNumber;
    private BigDecimal weight;
    private BigDecimal glycemie;
    private BigDecimal blodPressure;
    private BigDecimal height;
    private LocalDateTime saveDate;
    private String patientCode;

}