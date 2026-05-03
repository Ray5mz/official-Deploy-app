package dz.elit.sihati.application.reference.refcode.queries.getrefcode;

import dz.elit.sihati.domain.reference.RefCode;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;


@Mapper(componentModel = "spring")
public interface GetRefCodeMapper {

    @Mappings({

            @Mapping(source = "refCodeDomain.nomDomain" , target = "nomDomain"),
            @Mapping(source = "refCodeDomain.id" , target = "idDomain")
    })
    GetRefCodeDtoResponse refCodeToRefCodeDto(RefCode refCode);


}
