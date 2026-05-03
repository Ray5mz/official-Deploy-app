package dz.elit.sihati.application.care.ConstanteVitale.queries.GetConstanteVitaleByPatientCode;

import dz.elit.sihati.domain.care.ConstanteVitale;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class GetConstanteVitaleByPatientService implements GetConstanteVitaleByPatientUseCase {

    private final GetConstanteVitaleByPatientLoad load;
    private final GetConstanteVitaleByPatientMapper mapper;

    @Override
    public List<GetConstanteVitaleByPatientDtoResponse> execute(String patientCode) {

        List<ConstanteVitale> constantes =
                load.getByPatientCode(patientCode);

        return mapper.constanteVitaleToDtos(constantes);
    }
}