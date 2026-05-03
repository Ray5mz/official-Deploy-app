package dz.elit.sihati.application.reference.Provider.providerbycat;

import dz.elit.sihati.domain.reference.Provider;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class GetProviderBySpeService {

    private final GetProviderBySpeLoad loadProvider;
    private final GetProviderBySpeMapper providerMapper;

    public List<GetProviderBySpeDtoResponse> execute(String categoryCode) {
        List<Provider> providers = loadProvider.findProvidersByCategoryCode(categoryCode);
        return providerMapper.toDtos(providers);
    }
}