package dz.elit.sihati.application.care.requestcarecoverage.queries.downloadcarecoverage;

import dz.elit.sihati.domain.care.RequestCareCoverage;

public interface CareCoverageReportGenerator {
    byte[] generate(RequestCareCoverage coverage);
}