package dz.elit.sihati.application.reference.commune.queries.getcommunelist;

import dz.elit.sihati.domain.reference.Commune;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;

import java.util.List;


@Mapper(componentModel = "spring")
public interface GetCommuneListMapper {


    List<GetCommuneListDtoResponse> communeToCommuneDto(List<Commune> commune);

    @Mappings({
            @Mapping(source = "wilaya.code", target = "wilaya"),
    })
    GetCommuneListDtoResponse communeToCommuneDto(Commune commune);
}
