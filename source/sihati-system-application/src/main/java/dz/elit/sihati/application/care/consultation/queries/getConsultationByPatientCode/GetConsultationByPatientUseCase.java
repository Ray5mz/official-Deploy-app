package dz.elit.sihati.application.care.consultation.queries.getConsultationByPatientCode;

import java.util.List;

public interface GetConsultationByPatientUseCase {

    List<GetConsultationByPatientDtoResponse> execute(String patientCode);

}