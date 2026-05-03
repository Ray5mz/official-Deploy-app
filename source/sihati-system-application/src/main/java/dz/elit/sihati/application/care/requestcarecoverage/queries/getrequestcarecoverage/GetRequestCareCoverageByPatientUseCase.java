package dz.elit.sihati.application.care.requestcarecoverage.queries.getrequestcarecoverage;

import java.util.List;

public interface GetRequestCareCoverageByPatientUseCase {
    List<GetRequestCareCoverageByPatientDtoResponse> execute(String username);
}