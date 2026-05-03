package dz.elit.sihati.application.reference.Provider.providerbycat;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
@RequiredArgsConstructor
public class GetProviderBySpeUseCase {

    private final GetProviderBySpeService providerService;

    public List<GetProviderBySpeDtoResponse> execute(String categoryCode) {
        return providerService.execute(categoryCode);
    }
}