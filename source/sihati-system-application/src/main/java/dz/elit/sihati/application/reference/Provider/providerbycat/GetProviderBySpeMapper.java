package dz.elit.sihati.application.reference.Provider.providerbycat;

import dz.elit.sihati.domain.reference.Provider;
import org.mapstruct.Mapper;

import java.util.List;

@Mapper(componentModel = "spring")
public interface GetProviderBySpeMapper {

    GetProviderBySpeDtoResponse toDto(Provider provider);
    List<GetProviderBySpeDtoResponse> toDtos(List<Provider> providers);
}