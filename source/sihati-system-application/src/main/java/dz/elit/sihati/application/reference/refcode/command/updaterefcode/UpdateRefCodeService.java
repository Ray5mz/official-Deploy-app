package dz.elit.sihati.application.reference.refcode.command.updaterefcode;

import dz.elit.sihati.domain.exceptions.ResourceNotFoundException;
import dz.elit.sihati.domain.reference.RefCode;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class UpdateRefCodeService implements UpdateRefCodeUseCase {

    private final UpdateRefCode updateRefCode;
    private final UpdateRefCodeMapper updateRefCodeMapper;
    @Override
    public UpdateRefCodeDtoResponse execute(UpdateRefCodeDto updateRefCodeDto, String code, String nomDomain) {
        RefCode refCode = updateRefCode.findRefCode(code,nomDomain)
                .orElseThrow(() -> new ResourceNotFoundException("RefCode with code=" + code + " does not exists"));
        ;
        updateRefCodeMapper.refCodeUpdateDtoToRefCode(updateRefCodeDto, refCode);

        RefCode refCodeUpdate= updateRefCode.save(refCode);
        return updateRefCodeMapper.refCodeToUpdateRefCodeDtoResponse(refCodeUpdate);

    }
}
