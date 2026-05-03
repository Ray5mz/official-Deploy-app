package dz.elit.sihati.application.reference.refcode.command.updaterefcode;

import dz.elit.sihati.domain.reference.RefCode;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.MappingTarget;
import org.mapstruct.Mappings;

@Mapper(componentModel = "spring")
public interface UpdateRefCodeMapper {

   @Mappings({
           @Mapping(source = "nomDomain", target = "refCodeDomain.nomDomain"),
   })
    RefCode refCodeUpdateDtoToRefCode(UpdateRefCodeDto updateRefCodeDto, @MappingTarget RefCode refCode);
    @Mappings({

            @Mapping(source = "refCodeDomain.nomDomain" , target = "nomDomain"),

    })
     UpdateRefCodeDtoResponse refCodeToUpdateRefCodeDtoResponse(RefCode refCode);


}
