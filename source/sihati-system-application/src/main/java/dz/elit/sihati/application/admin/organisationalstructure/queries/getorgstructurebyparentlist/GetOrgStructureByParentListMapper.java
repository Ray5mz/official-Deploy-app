package dz.elit.sihati.application.admin.organisationalstructure.queries.getorgstructurebyparentlist;

import dz.elit.sihati.domain.admin.OrganisationalStructure;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;

import java.util.List;

@Mapper(componentModel = "spring")
public interface GetOrgStructureByParentListMapper {
    @Mappings({
            @Mapping(source = "code", target = "id")
    })
    GetOrgStructureByParentListDtoResponse unitToGetOrgStructureByParentList(OrganisationalStructure unit);

    List<GetOrgStructureByParentListDtoResponse> unitsToGetOrgStructureByParentList(List<OrganisationalStructure> unit);






}
