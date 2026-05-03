package dz.elit.sihati.application.care.requestcarecoverage.queries.getrequestcarecoverage;

import dz.elit.sihati.domain.reference.Patient;

import java.util.Optional;

public interface GetRequestCareCoverageByPatientLoadPatient {
    Optional<Patient> findPatientByCode(String code);
}