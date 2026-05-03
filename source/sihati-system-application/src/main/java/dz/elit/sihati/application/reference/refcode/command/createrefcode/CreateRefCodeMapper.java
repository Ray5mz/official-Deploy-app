package dz.elit.sihati.application.reference.refcode.command.createrefcode;



import dz.elit.sihati.domain.reference.RefCode;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;

@Mapper(componentModel = "spring")
public interface CreateRefCodeMapper {


    RefCode createRefCodeDtoToRefCode(CreateRefCodeDto createRefCodeDto);


    @Mappings({

            @Mapping(source = "refCodeDomain.nomDomain" , target = "nomDomain"),
    })
    CreateRefCodeDtoResponse refCodeToCreateRefCodeDtoResponse(RefCode refCode);

}
