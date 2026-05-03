package dz.elit.sihati.application.reference.refcode.queries.getrefcodelist;

import dz.elit.sihati.domain.reference.RefCode;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@RequiredArgsConstructor
@Transactional
class GetRefCodeListService implements GetRefCodeListUseCase {

    private final GetRefCodeListLoad refCodeListLoad;
    private final GetRefCodeListMapper refCodeListMapper;
    private final GetRefCodeListLoadDomain listLoadDomain;
    @Override
    public GetRefCodeListDtoResponse execute(Long idDomain) {
        List<RefCode> refCodes = refCodeListLoad.getRefCodeList(idDomain);
//        List<GetRefCodeListRelatedRefCodeDto> getRefCodeListRelatedRefCodeDtos = refCodeListMapper.refCodeToGetRefCodeRelationDtos(refCodes);
        List<GetRefCodeListDtoResponseDetails> list = refCodeListMapper.refCodesToRefCodeListDto(refCodes);



        GetRefCodeListDtoResponse refCodeListDto=new GetRefCodeListDtoResponse(listLoadDomain.getRefCodeListDomainName(idDomain),list);

        return refCodeListDto ;

    }
}
