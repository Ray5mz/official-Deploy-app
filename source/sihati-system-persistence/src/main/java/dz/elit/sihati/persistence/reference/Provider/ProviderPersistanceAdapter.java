package dz.elit.sihati.persistence.reference.Provider;

import dz.elit.sihati.application.care.requestcarecoverage.commands.createrequestcarecoverage.CreateRequestCareCoveragesLoadProvider;
import dz.elit.sihati.application.reference.Provider.listing.GetProviderLoad;
import dz.elit.sihati.application.reference.Provider.providerbycat.GetProviderBySpeLoad;
import dz.elit.sihati.domain.reference.Provider;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Optional;

@Component
@RequiredArgsConstructor
public class ProviderPersistanceAdapter
        implements GetProviderLoad,
        CreateRequestCareCoveragesLoadProvider,
        GetProviderBySpeLoad {

    private final ProviderRepository providerRepository;

    @Override
    public List<Provider> loadAll() {
        return providerRepository.findAll();
    }

    @Override
    public Optional<Provider> findProviderByCode(String code) {
        return providerRepository.findProviderByCode(code);
    }

    @Override
    public List<Provider> findProvidersByCategoryCode(String categoryCode) {
        return providerRepository.findByCategoryCode(categoryCode);
    }
}