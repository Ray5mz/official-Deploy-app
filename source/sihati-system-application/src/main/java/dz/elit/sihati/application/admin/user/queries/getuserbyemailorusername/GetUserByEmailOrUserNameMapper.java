package dz.elit.sihati.application.admin.user.queries.getuserbyemailorusername;



import dz.elit.sihati.domain.admin.OrganisationalStructure;

import dz.elit.sihati.domain.admin.User;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;

import java.util.List;
import java.util.Set;

@Mapper(componentModel = "spring")
public interface GetUserByEmailOrUserNameMapper {

    @Mappings({
            @Mapping(source = "structureType", target = "type")
    })
    GetUserByEmailOrUserNameDtoResponseStructure organisationalStructureToGetUserByEmailDtoResponseStructure(OrganisationalStructure organisationalStructure);

    @Mappings({
            @Mapping(source = "id", target = "id")
            ,
            @Mapping(source = "username", target = "username")
            ,
            @Mapping(source = "passwordChange", target = "passwordChange")
            ,
            @Mapping(source = "organisationalStructure", target = "structure")

    })
    GetUserByEmailOrUserNameDtoResponse userToGetUserByEmailDtoResponse(User user);


    }
