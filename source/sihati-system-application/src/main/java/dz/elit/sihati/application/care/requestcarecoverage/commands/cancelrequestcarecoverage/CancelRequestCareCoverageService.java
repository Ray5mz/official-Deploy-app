package dz.elit.sihati.application.care.requestcarecoverage.commands.cancelrequestcarecoverage;

import dz.elit.sihati.application.care.requestcarecoverage.commands.updaterequestcarecoverage.UpdateRequestCareCoverage;
import dz.elit.sihati.domain.care.RequestCareCoverage;
import dz.elit.sihati.domain.care.enumeration.RequestCareCoverageStatus;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@RequiredArgsConstructor
public class CancelRequestCareCoverageService implements CancelRequestCareCoverageUseCase {

    private final CancelRequestCareCoverageLoad cancelRequestCareCoverageLoad;
    private final UpdateRequestCareCoverage updateRequestCareCoverage;
    private final CancelRequestCareCoverageMapper mapper;

    @Override
    public CancelRequestCareCoverageDtoResponse execute(String code) {

        Optional<RequestCareCoverage> optional = cancelRequestCareCoverageLoad.findRequestCareCoverageByCode(code);

        if (optional.isEmpty()) {
            throw new IllegalArgumentException("Aucune demande de prise en charge trouvée avec le code : " + code);
        }

        RequestCareCoverage careCoverage = optional.get();

        if (careCoverage.getStatus() == RequestCareCoverageStatus.CANCELLED) {
            throw new IllegalStateException("La demande est déjà annulée.");
        }

        careCoverage.setStatus(RequestCareCoverageStatus.CANCELLED);

        RequestCareCoverage saved = updateRequestCareCoverage.save(careCoverage);

        return mapper.toDto(saved);
    }
}