package dz.elit.sihati.application.reference.refcodedomain.commands.updaterefcodedomain;

import dz.elit.sihati.domain.exceptions.ResourceNotFoundException;
import dz.elit.sihati.domain.reference.RefCodeDomain;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class UpdateRefCodeDomainService implements UpdateRefCodeDomainUseCase {

    private final UpdateRefCodeDomain updateRefCodeDomain;

    private final UpdateRefCodeDomainLoad updateRefCodeDomainLoad;
    private final UpdateRefCodeDomainMapper updateRefCodeDomainMapper;
    @Override
    public UpdateRefCodeDomainDtoResponse execute(UpdateRefCodeDomainDto updateRefCodeDto,  String nomDomain) {
        RefCodeDomain refCodeDomain = updateRefCodeDomainLoad.findRefCodeDomain(nomDomain)
                .orElseThrow(() -> new ResourceNotFoundException("RefCodeDomain with code=" + nomDomain + " does not exists"));
        updateRefCodeDomainMapper.refCodeDomainUpdateDtoToRefCodeDomain(updateRefCodeDto, refCodeDomain);
        RefCodeDomain refCodeUpdate= updateRefCodeDomain.save(refCodeDomain);
        return updateRefCodeDomainMapper.refCodeDomainToUpdateRefCodeDomainDtoResponse(refCodeUpdate);

    }
}
