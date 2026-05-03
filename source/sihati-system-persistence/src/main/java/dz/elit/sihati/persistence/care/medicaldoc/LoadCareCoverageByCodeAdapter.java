package dz.elit.sihati.persistence.care.medicaldoc;

import dz.elit.sihati.application.care.medicaldoc.commands.upload.LoadCareCoverageByCodePort;
import dz.elit.sihati.domain.care.RequestCareCoverage;
import dz.elit.sihati.persistence.care.requestcarecoverage.RequestCareCoverageRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;

import java.util.Optional;

@Component
@RequiredArgsConstructor
public class LoadCareCoverageByCodeAdapter implements LoadCareCoverageByCodePort {

    private final RequestCareCoverageRepository requestCareCoverageRepository;

    @Override
    public Optional<RequestCareCoverage> findByCode(String code) {
        return requestCareCoverageRepository.findByCode(code);
    }
}
