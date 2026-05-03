package dz.elit.sihati.web.reference.Provider;

import dz.elit.sihati.application.reference.Provider.listing.GetProviderUseCase;
import dz.elit.sihati.application.reference.Provider.providerbycat.GetProviderBySpeDtoResponse;
import dz.elit.sihati.application.reference.Provider.providerbycat.GetProviderBySpeUseCase;
import dz.elit.sihati.domain.reference.Provider;
import dz.elit.sihati.persistence.reference.Provider.ProviderRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
@RequiredArgsConstructor
public class ProviderController implements ProviderResource {

    private final GetProviderUseCase getProviderUseCase;
    private final GetProviderBySpeUseCase getProviderBySpeUseCase;
    private final ProviderRepository providerRepository;

    @Override
    public List<Provider> getProviderList() {
        return getProviderUseCase.execute();
    }

    @Override
    public List<GetProviderBySpeDtoResponse> getProvidersByCategoryCode(String categoryCode) {
        return getProviderBySpeUseCase.execute(categoryCode);
    }

    @Override
    public Provider getProviderByCode(String code) {
        return providerRepository.findByCode(code)
                .stream()
                .findFirst()
                .orElseThrow(() -> new RuntimeException("Provider not found: " + code));
    }
}
