package dz.elit.sihati.application.reference.Provider.listing;
import dz.elit.sihati.domain.reference.Provider;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class GetProviderService implements GetProviderUseCase {

    private final GetProviderLoad providerLoad;


    @Override
    public List<Provider> execute() {

        List<Provider> Provider  = providerLoad.loadAll();

        return Provider;


    }
}

