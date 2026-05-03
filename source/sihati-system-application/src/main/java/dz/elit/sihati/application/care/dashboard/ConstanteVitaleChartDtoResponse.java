package dz.elit.sihati.application.care.dashboard;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ConstanteVitaleChartDtoResponse {
    private LocalDateTime date;
    private BigDecimal value;
}