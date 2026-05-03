package dz.elit.sihati.application.reference.refcodedomain.queries.getdomainrefcodelist.getdomainrefcodelist;


import dz.elit.sihati.domain.reference.RefCodeDomain;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
class GetDomainRefCodeListService implements GetDomainRefCodeListUseCase {

    private final GetDomainRefCodeListLoad getDomainListLoad;

    private final GetDomainRefCodeListMapper getDomainRefCodeListMapper;



    @Override
    public List<GetDomainRefCodeListDtoResponse> execute() {
        List<RefCodeDomain> refCodeDomains = getDomainListLoad.getRefCodeDomains();
        List<GetDomainRefCodeListDtoResponse> listDtos=getDomainRefCodeListMapper.refCodeDomainsToGetDomainRefCodeListDto(refCodeDomains);
           return listDtos;
    }
}
