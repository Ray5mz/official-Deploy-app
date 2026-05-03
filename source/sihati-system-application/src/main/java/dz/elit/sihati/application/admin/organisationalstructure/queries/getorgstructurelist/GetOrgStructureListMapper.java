package dz.elit.sihati.application.admin.organisationalstructure.queries.getorgstructurelist;

import dz.elit.sihati.domain.admin.OrganisationalStructure;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;

import java.util.List;

@Mapper(componentModel = "spring")
public interface GetOrgStructureListMapper {

    @Mappings({
        @Mapping(source = "code", target = "id"),
        @Mapping(source = "commune.code", target = "communeCode"),
        @Mapping(source = "structureType", target = "structureType"),
    })
    GetOrgStructureListDtoResponse unitToGetOrglStructureListDto(OrganisationalStructure unit);

    List<GetOrgStructureListDtoResponse> unitsToGetOrglStructureListDto(List<OrganisationalStructure> units);
}
