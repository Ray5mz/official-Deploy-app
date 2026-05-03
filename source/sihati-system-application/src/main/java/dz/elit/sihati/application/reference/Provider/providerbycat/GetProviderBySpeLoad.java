package dz.elit.sihati.application.reference.Provider.providerbycat;

import dz.elit.sihati.domain.reference.Provider;

import java.util.List;

public interface GetProviderBySpeLoad {
    List<Provider> findProvidersByCategoryCode(String categoryCode);
}