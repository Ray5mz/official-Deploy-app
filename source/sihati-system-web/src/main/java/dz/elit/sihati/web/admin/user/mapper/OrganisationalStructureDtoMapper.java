package dz.elit.sihati.web.admin.user.mapper;

import dz.elit.sihati.domain.admin.OrganisationalStructure;
import dz.elit.sihati.web.admin.user.dto.StructureDto;
import dz.elit.sihati.web.admin.user.dto.StructureTokenDto;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;

@Mapper(componentModel = "spring")
public interface OrganisationalStructureDtoMapper {

    @Mappings({
            @Mapping(target = "id", source = "code"),
            @Mapping(source = "structureType", target = "type")
    })
    StructureDto organisationalStructureToOrganisationalStructureDto(OrganisationalStructure organisationalStructure);

    @Mappings({
            @Mapping(target = "id", source = "code"),
            @Mapping(source = "structureType", target = "type")
    })
    StructureTokenDto structToOrganisationalTokenDto(OrganisationalStructure organisationalStructure);
}
