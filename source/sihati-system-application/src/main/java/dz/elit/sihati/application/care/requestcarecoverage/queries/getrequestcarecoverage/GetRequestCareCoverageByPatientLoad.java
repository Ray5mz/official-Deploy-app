package dz.elit.sihati.application.care.requestcarecoverage.queries.getrequestcarecoverage;

import dz.elit.sihati.domain.care.RequestCareCoverage;

import java.util.List;

public interface GetRequestCareCoverageByPatientLoad {
    List<RequestCareCoverage> findByPatientId(Long patientId);
}