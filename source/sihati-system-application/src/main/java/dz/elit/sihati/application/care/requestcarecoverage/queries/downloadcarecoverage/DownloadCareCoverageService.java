package dz.elit.sihati.application.care.requestcarecoverage.queries.downloadcarecoverage;

import dz.elit.sihati.domain.care.RequestCareCoverage;
import dz.elit.sihati.domain.exceptions.ResourceNotFoundException;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
class DownloadCareCoverageService implements DownloadCareCoverageUseCase {

    private final DownloadCareCoverageLoadCoverage loadCoverage;
    private final CareCoverageReportGenerator reportGenerator;

    @Override
    public byte[] execute(Long id) {
        RequestCareCoverage coverage = loadCoverage.findCareCoverageById(id)
                .orElseThrow(() -> new ResourceNotFoundException("CareCoverage with id=" + id + " does not exist"));
        return reportGenerator.generate(coverage);
    }
}