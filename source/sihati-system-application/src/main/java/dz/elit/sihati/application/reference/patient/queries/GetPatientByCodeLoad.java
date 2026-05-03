package dz.elit.sihati.application.reference.patient.queries;

import dz.elit.sihati.domain.reference.Patient;

import java.util.Optional;

public interface GetPatientByCodeLoad {
    Optional<Patient> findPatientByCode(String code);
}