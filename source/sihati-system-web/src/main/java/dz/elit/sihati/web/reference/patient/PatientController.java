package dz.elit.sihati.web.reference.patient;

import dz.elit.sihati.application.reference.patient.queries.GetPatientByCodeDtoResponse;
import dz.elit.sihati.application.reference.patient.queries.GetPatientByCodeUseCase;
import dz.elit.sihati.commons.WebAdapter;
import lombok.RequiredArgsConstructor;

@WebAdapter
@RequiredArgsConstructor
public class PatientController implements PatientResource {

    private final GetPatientByCodeUseCase getPatientByCodeUseCase;


      @Override
public GetPatientByCodeDtoResponse getPatientByCode(String code) {
return getPatientByCodeUseCase.execute(code);
    }
}