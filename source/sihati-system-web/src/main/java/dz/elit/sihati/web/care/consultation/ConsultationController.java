package dz.elit.sihati.web.care.consultation;



import dz.elit.sihati.application.care.consultation.queries.GetLastConsultation.GetLastConsultationUseCase;
import dz.elit.sihati.application.care.consultation.queries.GetLastConsultation.GetLastConsultationDtoResponse;
import dz.elit.sihati.application.care.consultation.queries.getConsultationByPatientCode.GetConsultationByPatientDtoResponse;
import dz.elit.sihati.application.care.consultation.queries.getConsultationByPatientCode.GetConsultationByPatientUseCase;
import dz.elit.sihati.application.care.consultation.queries.getconsultation.GetConsultationDtoResponse;
import dz.elit.sihati.application.care.consultation.queries.getconsultation.GetConsultationUseCase;
import dz.elit.sihati.application.care.consultation.queries.getconsultationlist.GetConsultationListDtoResponse;
import dz.elit.sihati.application.care.consultation.queries.getconsultationlist.GetConsultationListUseCase;
import dz.elit.sihati.commons.WebAdapter;
import dz.elit.sihati.web.commons.controller.BaseController;
import lombok.RequiredArgsConstructor;

import java.util.List;

@WebAdapter
@RequiredArgsConstructor
class ConsultationController extends BaseController implements ConsultationResource {

    private final GetConsultationListUseCase getconsultationListUseCase;
    private final GetConsultationUseCase getconsultationUseCase;
    private final GetConsultationByPatientUseCase getConsultationByPatientUseCase;
    private final GetLastConsultationUseCase getLastConsultationUseCase;

    @Override
    public List<GetConsultationListDtoResponse> loadAll() {
        return getconsultationListUseCase.execute();
    }


    @Override
    public GetConsultationDtoResponse getconsultation(String consultationNumber) {
        return getconsultationUseCase.execute(consultationNumber);

    }
    @Override
    public List<GetConsultationByPatientDtoResponse> getConsultationsByPatientCode(String patientCode) {
        return getConsultationByPatientUseCase.execute(patientCode);
    }

    @Override
    public GetLastConsultationDtoResponse getLastConsultationByPatientCode(String patientCode) {
        return getLastConsultationUseCase.execute(patientCode);
    }
}

