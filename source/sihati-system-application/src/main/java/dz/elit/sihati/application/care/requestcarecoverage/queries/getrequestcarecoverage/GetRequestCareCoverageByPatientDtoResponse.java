package dz.elit.sihati.application.care.requestcarecoverage.queries.getrequestcarecoverage;

import lombok.Data;

import java.time.LocalDate;

@Data
public class GetRequestCareCoverageByPatientDtoResponse {
    private Long id;
    private String code;
    private String status;
    private LocalDate demandeDate;
    private LocalDate startDate;
    private LocalDate endDate;
    private Boolean hasCancer;
    private String notes;
}