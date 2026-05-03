package dz.elit.sihati.application.care.requestcarecoverage.queries.getrequestcarecoverage;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class GetRequestCareCoverageDtoResponse {
    private String code;
    private String notes;
    private LocalDate startDate;
    private LocalDate endDate;
    private LocalDate demandeDate;
}
