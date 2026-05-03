package dz.elit.sihati.application.care.requestcarecoverage.commands.cancelrequestcarecoverage;

import dz.elit.sihati.domain.care.enumeration.RequestCareCoverageStatus;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CancelRequestCareCoverageDtoResponse {

    private String code;
    private RequestCareCoverageStatus status;
}