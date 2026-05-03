package dz.elit.sihati.application.admin.organisationalstructure.queries.getorgstructurebyparentalllist;

import dz.elit.sihati.domain.admin.OrganisationalStructure;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;

import java.util.List;

@Mapper(componentModel = "spring")
public interface GetOrgStructureAllListMapper {

    @Mappings({
            @Mapping(source = "code", target = "id"),
            @Mapping(source = "designation", target = "name"),
            @Mapping(source = "designationAr", target = "nameAr"),
            @Mapping(source = "logo", target = "imageUrl"),
            @Mapping(source = "parentOrganisationalStructure.code", target = "parentId")
    })
    GetOrgStructureAllListDtoResponse unitToGetOrgStructureListDto(OrganisationalStructure unit);

    List<GetOrgStructureAllListDtoResponse> unitsToGetOrgStructureListDto(List<OrganisationalStructure> units);
}
