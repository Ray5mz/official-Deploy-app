package dz.elit.sihati.application.reference.refcode.queries.getrefcodelist;

import dz.elit.sihati.domain.reference.RefCode;
import org.mapstruct.Mapper;

import java.util.List;

@Mapper(componentModel = "spring")
public interface GetRefCodeListMapper {
    GetRefCodeListDtoResponseDetails refCodeToRefCodeDto(RefCode refCode);

    List<GetRefCodeListDtoResponseDetails> refCodesToRefCodeListDto(List<RefCode> refCodes);



}
