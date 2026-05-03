package dz.elit.sihati.application.reference.refcodedomain.queries.getdomainrefcodelist.getdomainrefcodelist;

import dz.elit.sihati.domain.reference.RefCodeDomain;
import org.mapstruct.Mapper;

import java.util.List;


@Mapper(componentModel = "spring")
public interface GetDomainRefCodeListMapper {

    GetDomainRefCodeListDtoResponse refCodeDomainToGetDomainRefCodeListDto(RefCodeDomain refCodeDomain);
    List<GetDomainRefCodeListDtoResponse> refCodeDomainsToGetDomainRefCodeListDto(List<RefCodeDomain> refCodeDomain);
}
