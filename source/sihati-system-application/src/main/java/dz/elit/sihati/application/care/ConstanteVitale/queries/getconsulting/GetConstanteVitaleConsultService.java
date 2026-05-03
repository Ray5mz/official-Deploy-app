package dz.elit.sihati.application.care.ConstanteVitale.queries.getconsulting;

import dz.elit.sihati.domain.care.ConstanteVitale;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class GetConstanteVitaleConsultService implements GetConstanteVitaleConsultUseCase {

    private final GetConstanteVitaleConsultLoad consultLoad;

    @Override
    public GetConstanteVitaleConsultDtoResponse execute(String constantevitaleNumber) {

        ConstanteVitale cv = consultLoad
                .loadByConstanteVitaleNumber(constantevitaleNumber);

        return new GetConstanteVitaleConsultDtoResponse(cv);
    }
}