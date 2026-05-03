package dz.elit.sihati.application.care.consultation.queries.getconsultation;

public interface GetConsultationUseCase {

        GetConsultationDtoResponse execute(String consultationNumber);
}