package dz.elit.sihati.application.care.requestcarecoverage.commands.createrequestcarecoverage;
import dz.elit.sihati.domain.reference.Patient;

import java.util.Optional;

public interface CreateRequestCareCoveragesLoadPatient {
     Optional<Patient> findPatientByCode(String code);
}
