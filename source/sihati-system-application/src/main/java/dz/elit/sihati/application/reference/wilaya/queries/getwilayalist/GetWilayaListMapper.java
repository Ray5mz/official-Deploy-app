package dz.elit.sihati.application.reference.wilaya.queries.getwilayalist;

import dz.elit.sihati.domain.reference.Wilaya;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;

import java.util.List;

@Mapper(componentModel = "spring")
public interface GetWilayaListMapper {

    @Mappings({
        @Mapping(source = "code", target = "id"),
        @Mapping(source = "code", target = "code"),
        @Mapping(source = "designation", target = "designation")
    })
    GetWilayaListDtoResponse wilayaToWilayaDto(Wilaya wilaya);

    List<GetWilayaListDtoResponse> wilayaToWilayaListDto(List<Wilaya> units);
}
