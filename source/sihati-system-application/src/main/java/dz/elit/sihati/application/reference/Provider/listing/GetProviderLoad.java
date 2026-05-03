package dz.elit.sihati.application.reference.Provider.listing;


import dz.elit.sihati.domain.reference.Provider;

import java.util.List;
import java.util.Optional;

public interface GetProviderLoad {

    List<Provider> loadAll();

    Optional<Provider> findProviderByCode(String code);

}
