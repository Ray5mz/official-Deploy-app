package dz.elit.sihati.application.care.requestcarecoverage.queries.downloadcarecoverage;

import dz.elit.sihati.domain.care.RequestCareCoverage;

import java.util.Optional;

public interface DownloadCareCoverageLoadCoverage {
    Optional<RequestCareCoverage> findCareCoverageById(Long id);
}