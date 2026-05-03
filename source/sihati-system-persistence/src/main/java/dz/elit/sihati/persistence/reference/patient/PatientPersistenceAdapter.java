package dz.elit.sihati.persistence.reference.patient;

import dz.elit.sihati.application.care.requestcarecoverage.commands.createrequestcarecoverage.CreateRequestCareCoveragesLoadPatient;
import dz.elit.sihati.application.care.requestcarecoverage.commands.createrequestcarecoverage.CreateRequestCareCoveragesSavePatient;
import dz.elit.sihati.application.reference.patient.queries.GetPatientByCodeLoad;
import dz.elit.sihati.domain.reference.Patient;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;

import java.util.Optional;

@Component
@RequiredArgsConstructor
public class PatientPersistenceAdapter implements
        CreateRequestCareCoveragesLoadPatient,
        CreateRequestCareCoveragesSavePatient,
        GetPatientByCodeLoad {

  private final PatientRepository patientRepository;

  @Override
  public Optional<Patient> findPatientByCode(String code) {
    return patientRepository.findPatientIdByCode(code)
            .flatMap(id -> patientRepository.findById(id));
  }

  @Override
  public Patient savePatient(Patient patient) {
    return patientRepository.save(patient);
  }
}