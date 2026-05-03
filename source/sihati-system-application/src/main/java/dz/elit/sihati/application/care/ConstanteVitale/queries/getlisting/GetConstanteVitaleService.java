package dz.elit.sihati.application.care.ConstanteVitale.queries.getlisting;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
@RequiredArgsConstructor
public class GetConstanteVitaleService  implements GetConstanteVitaleUseCase{
    private final GetConstanteVitaleLoad constantevitaleLoad;



    @Override
    public List<GetConstanteVitaleDtoResponse> execute() {

        return constantevitaleLoad.loadAll()
                .stream()
                .map(GetConstanteVitaleDtoResponse::new)
                .toList();
    }
}
