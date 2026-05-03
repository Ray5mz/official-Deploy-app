package dz.elit.sihati.application.admin.organisationalstructure.queries.getorgstructure;

import dz.elit.sihati.domain.admin.OrganisationalStructure;
import dz.elit.sihati.domain.reference.Commune;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;


@Mapper(componentModel = "spring")
public interface GetOrgStructureMapper {

    @Mappings({
            @Mapping(source = "code", target = "id"),
            @Mapping(source="parentOrganisationalStructure",target = "parent")

    })
    GetOrgStructureDtoResponse unitToGetOrgStructureDto(OrganisationalStructure unit);

    GetOrgStructureDtoResponseCommune communeToGetOrgStructureDtoCommune(Commune commune);
}
