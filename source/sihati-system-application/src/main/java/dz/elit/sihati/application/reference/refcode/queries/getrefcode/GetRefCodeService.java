package dz.elit.sihati.application.reference.refcode.queries.getrefcode;

import dz.elit.sihati.domain.exceptions.ResourceNotFoundException;
import dz.elit.sihati.domain.reference.RefCode;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
class GetRefCodeService implements GetRefCodeUseCase {

    private final GetRefCodeLoad refCodeLoad;
    private final GetRefCodeMapper refCodeMapper;


    @Override
    public GetRefCodeDtoResponse execute(Long idDomain, Long id) {
        RefCode refCode = refCodeLoad.findRefCodeById(idDomain,id)
                .orElseThrow(() -> new ResourceNotFoundException("RefCode with code=" + idDomain + " does not exists"));

        GetRefCodeDtoResponse getRefCodeDto  = refCodeMapper.refCodeToRefCodeDto(refCode);
        return  getRefCodeDto;
    }
}
