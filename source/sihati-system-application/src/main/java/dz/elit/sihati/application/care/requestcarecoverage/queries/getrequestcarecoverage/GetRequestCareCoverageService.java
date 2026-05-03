package dz.elit.sihati.application.care.requestcarecoverage.queries.getrequestcarecoverage;

import dz.elit.sihati.domain.care.RequestCareCoverage;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class GetRequestCareCoverageService implements GetRequestCareCoverageUseCase {


    private final GetRequestCareCoverageLoad requestCareCoverageLoad;
    private final GetRequestCareCoverageMapper coverageMapper;

    @Override
    public List<GetRequestCareCoverageDtoResponse> execute() {

        List<RequestCareCoverage> requestCareCoverages= requestCareCoverageLoad.loadAll();

        return coverageMapper.requestCareCoverageToGetRequestCareCoverageDtos(requestCareCoverages);
    }
}
