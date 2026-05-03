package dz.elit.sihati.application.care.ConstanteVitale.queries.getconsulting;

import dz.elit.sihati.domain.care.ConstanteVitale;
import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDateTime;


@Data
public class GetConstanteVitaleConsultDtoResponse {

    private Long id;
    private BigDecimal weight;
    private BigDecimal glycemie;
    private BigDecimal blodPressure;
    private BigDecimal height;
    private LocalDateTime saveDate;
    private String constantevitaleNumber;

    public GetConstanteVitaleConsultDtoResponse(ConstanteVitale cv) {

        this.id = cv.getId();
        this.weight = cv.getWeight();
        this.glycemie = cv.getGlycemie();
        this.blodPressure = cv.getBlodPressure();
        this.height = cv.getHeight();
        this.saveDate = cv.getSaveDate();
        this.constantevitaleNumber = cv.getConstantevitaleNumber();
    }
}