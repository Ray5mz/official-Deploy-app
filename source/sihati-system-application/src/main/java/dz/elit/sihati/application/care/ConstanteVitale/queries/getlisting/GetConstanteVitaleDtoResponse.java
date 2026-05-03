package dz.elit.sihati.application.care.ConstanteVitale.queries.getlisting;

import dz.elit.sihati.domain.care.ConstanteVitale;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.time.LocalDateTime;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class GetConstanteVitaleDtoResponse {
    private BigDecimal    weight;
    private BigDecimal  glycemie;
    private BigDecimal blod_pressure;
    private BigDecimal   height;
    private LocalDateTime save_date;

    public GetConstanteVitaleDtoResponse(ConstanteVitale cv) {
        this.weight = cv.getWeight();
        this.glycemie = cv.getGlycemie();
        this.blod_pressure = cv.getBlodPressure();
        this.height = cv.getHeight();
        this.save_date = cv.getSaveDate();
    }
}