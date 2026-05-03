package dz.elit.sihati.application.care.requestcarecoverage.commands.createrequestcarecoverage;
import dz.elit.sihati.domain.reference.Provider;

import java.util.Optional;

public interface CreateRequestCareCoveragesLoadProvider {
     Optional<Provider> findProviderByCode(String code);
}
