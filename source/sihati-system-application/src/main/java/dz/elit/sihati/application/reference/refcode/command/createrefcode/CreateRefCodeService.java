package dz.elit.sihati.application.reference.refcode.command.createrefcode;


import dz.elit.sihati.domain.exceptions.ResourceAlreadyExistException;
import dz.elit.sihati.domain.reference.RefCode;
import dz.elit.sihati.domain.reference.RefCodeDomain;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@RequiredArgsConstructor
public class CreateRefCodeService implements CreateRefCodeUseCase {

    private final CreateRefCode createRefCode;
    private final CreateRefCodeMapper createRefCodeMapper;
    private final CreateRefCodeLoadRefCodeDomain loadRefCodeDomain;

    @Override
    public CreateRefCodeDtoResponse execute(CreateRefCodeDto createRefCodeDto) {
        Optional<RefCode> refCodeExist = createRefCode.findRefCode(createRefCodeDto.getCode(), createRefCodeDto.getNomDomain());

        if (refCodeExist.isPresent()) {
            throw  new ResourceAlreadyExistException("RefCode with code=" + createRefCodeDto.getCode() + " exists");
        }
        RefCode refCode = createRefCodeMapper.createRefCodeDtoToRefCode(createRefCodeDto);


        RefCodeDomain refCodeDomain = loadRefCodeDomain.findRefCodeDomain(createRefCodeDto.getNomDomain()).get();
        refCode.setRefCodeDomain(refCodeDomain);


        RefCode savedRefCode = createRefCode.save(refCode);
        CreateRefCodeDtoResponse createRefCodeDtoResponse = createRefCodeMapper.refCodeToCreateRefCodeDtoResponse(savedRefCode);
        return createRefCodeDtoResponse;
    }
}
