package dz.elit.sihati.application.care.consultation.queries.getconsultation;
import dz.elit.sihati.domain.care.Consultation;

public interface GetConsultationLoad {

    Consultation get(String consultationNumber);
}