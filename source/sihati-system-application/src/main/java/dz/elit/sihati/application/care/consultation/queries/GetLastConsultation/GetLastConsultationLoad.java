package dz.elit.sihati.application.care.consultation.queries.GetLastConsultation;

import dz.elit.sihati.domain.care.Consultation;

import java.util.Optional;

public interface GetLastConsultationLoad {
    Optional<Consultation> findLastByPatientCode(String patientCode);
}