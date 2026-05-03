package dz.elit.sihati.application.care.dashboard;

import lombok.Builder;
import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDateTime;

@Data
@Builder
public class LastConstanteVitaleDtoResponse {
    private BigDecimal weight;
    private BigDecimal glycemie;
    private BigDecimal blodPressure;
    private BigDecimal height;
    private LocalDateTime date;
}