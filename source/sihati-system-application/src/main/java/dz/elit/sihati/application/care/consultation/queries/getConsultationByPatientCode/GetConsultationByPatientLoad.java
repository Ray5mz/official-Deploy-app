package dz.elit.sihati.application.care.consultation.queries.getConsultationByPatientCode;

import dz.elit.sihati.domain.care.Consultation;

import java.util.List;

public interface GetConsultationByPatientLoad {

    List<Consultation> getByPatientCode(String patientCode);

}