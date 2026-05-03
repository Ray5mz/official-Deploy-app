package dz.elit.sihati.web.care.ConstanteVitale;


import dz.elit.sihati.application.care.ConstanteVitale.queries.GetConstanteVitaleByPatientCode.GetConstanteVitaleByPatientDtoResponse;
import dz.elit.sihati.application.care.ConstanteVitale.queries.GetConstanteVitaleByPatientCode.GetConstanteVitaleByPatientUseCase;
import dz.elit.sihati.application.care.ConstanteVitale.queries.getconsulting.GetConstanteVitaleConsultDtoResponse;
import dz.elit.sihati.application.care.ConstanteVitale.queries.getconsulting.GetConstanteVitaleConsultUseCase;
import dz.elit.sihati.application.care.ConstanteVitale.queries.getlisting.GetConstanteVitaleDtoResponse;
import dz.elit.sihati.application.care.ConstanteVitale.queries.getlisting.GetConstanteVitaleUseCase;
import dz.elit.sihati.commons.WebAdapter;
import dz.elit.sihati.web.commons.controller.BaseController;
import lombok.RequiredArgsConstructor;

import java.util.List;




@WebAdapter
@RequiredArgsConstructor
public class ConstanteVitaleController extends BaseController implements ConstanteVitaleResource {

    private final GetConstanteVitaleUseCase getConstanteVitaleUseCase;
    private final GetConstanteVitaleConsultUseCase consultUseCase;
    private final GetConstanteVitaleByPatientUseCase getConstanteVitaleByPatientUseCase;


    @Override
    public List<GetConstanteVitaleDtoResponse> loadAll() {
        return getConstanteVitaleUseCase.execute();
    }

    @Override
    public GetConstanteVitaleConsultDtoResponse consult(String constantevitaleNumber) {
        return consultUseCase.execute(constantevitaleNumber);
    }

    @Override
    public List<GetConstanteVitaleByPatientDtoResponse> getConstanteVitaleByPatientCode(String patientCode) {
        return getConstanteVitaleByPatientUseCase.execute(patientCode);
    }
}

