package dz.elit.sihati.application.care.requestcarecoverage.queries.getrequestcarecoverage;

import dz.elit.sihati.application.admin.user.queries.getuser.GetUserUseCase;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class GetRequestCareCoverageByPatientService implements GetRequestCareCoverageByPatientUseCase {

    private final GetUserUseCase getUserUseCase;
    private final GetRequestCareCoverageByPatientLoad loadCareCoverage;
    private final GetRequestCareCoverageMapper mapper;

    @Override
    public List<GetRequestCareCoverageByPatientDtoResponse> execute(String username) {
        Long patientId = Long.parseLong(getUserUseCase.execute(username).getId());
        return mapper.toDtoList(loadCareCoverage.findByPatientId(patientId));
    }
}