package dz.elit.sihati.application.care.consultation.queries.GetLastConsultation;

public interface GetLastConsultationUseCase {
    GetLastConsultationDtoResponse execute(String patientCode);
}
