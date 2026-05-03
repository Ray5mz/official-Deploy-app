package dz.elit.sihati.application.care.ConstanteVitale.queries.GetConstanteVitaleByPatientCode;

import java.util.List;

public interface GetConstanteVitaleByPatientUseCase {

    List<GetConstanteVitaleByPatientDtoResponse> execute(String patientCode);

}