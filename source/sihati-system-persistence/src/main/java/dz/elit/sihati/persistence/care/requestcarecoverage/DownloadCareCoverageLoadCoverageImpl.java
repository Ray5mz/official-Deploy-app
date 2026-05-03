package dz.elit.sihati.persistence.care.requestcarecoverage;

import dz.elit.sihati.application.care.requestcarecoverage.queries.downloadcarecoverage.DownloadCareCoverageLoadCoverage;
import dz.elit.sihati.domain.care.RequestCareCoverage;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@RequiredArgsConstructor
public class DownloadCareCoverageLoadCoverageImpl implements DownloadCareCoverageLoadCoverage {

    private final RequestCareCoverageRepository requestCareCoverageRepository;

    @Override
    public Optional<RequestCareCoverage> findCareCoverageById(Long id) {
        return requestCareCoverageRepository.findById(id);
    }
}