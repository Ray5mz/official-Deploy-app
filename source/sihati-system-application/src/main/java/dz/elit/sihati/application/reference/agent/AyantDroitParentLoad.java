package dz.elit.sihati.application.reference.agent;

import dz.elit.sihati.domain.reference.Patient;

import java.util.Optional;

public interface AyantDroitParentLoad {
    Optional<Patient> findEmployeeByPatientCode(String codePatient);
}