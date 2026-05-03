package dz.elit.sihati.application.admin.user.queries.getuser;


import dz.elit.sihati.domain.admin.OrganisationalStructure;

import dz.elit.sihati.domain.admin.User;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;

import java.util.List;
import java.util.Set;

@Mapper(componentModel = "spring")
public interface GetUserMapper {

    @Mappings({
            @Mapping(source = "structureType", target = "type"),
            @Mapping(source = "parentOrganisationalStructure", target = "parentStructure")
    })
    GetUserDtoResponseStructure organisationalStructureToGetUserDtoResponseStructure(OrganisationalStructure organisationalStructure);

    @Mappings({
        @Mapping(source = "id", target = "id")
        ,
            @Mapping(source = "username", target = "username")
        ,
            @Mapping(source = "passwordChange", target = "passwordChange")
            ,
            @Mapping(source = "organisationalStructure", target = "structure"),
            @Mapping(source = "maxAccessOrganisationalStructure", target = "structureAccess")

    })
    GetUserDtoResponse userToGetUserDtoResponse(User user);




}
