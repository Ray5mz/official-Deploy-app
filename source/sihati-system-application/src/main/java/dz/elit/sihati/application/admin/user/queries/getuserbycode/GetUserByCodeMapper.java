package dz.elit.sihati.application.admin.user.queries.getuserbycode;

import dz.elit.sihati.application.admin.user.queries.getuser.GetUserMapper;
import dz.elit.sihati.domain.admin.User;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

@Mapper(componentModel = "spring", uses = GetUserMapper.class)
public interface GetUserByCodeMapper {

    @Mapping(source = "organisationalStructure", target = "structure")
    @Mapping(source = "maxAccessOrganisationalStructure", target = "structureAccess")
    GetUserByCodeDtoResponse userToGetUserByCodeDtoResponse(User user);
}