package dz.elit.sihati.application.care.consultation.queries.getConsultationByPatientCode;

import dz.elit.sihati.domain.care.Consultation;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class GetConsultationByPatientService implements GetConsultationByPatientUseCase {

    private final GetConsultationByPatientLoad consultationLoad;
    private final GetConsultationByPatientMapper mapper;

    @Override
    public List<GetConsultationByPatientDtoResponse> execute(String patientCode) {

        List<Consultation> consultations =
                consultationLoad.getByPatientCode(patientCode);

        return mapper.consultationsToDtos(consultations);
    }
}