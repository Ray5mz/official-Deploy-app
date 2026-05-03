package dz.elit.sihati.application.reference.refcodedomain.commands.createrefcodedomain;


import dz.elit.sihati.domain.exceptions.ResourceAlreadyExistException;
import dz.elit.sihati.domain.reference.RefCodeDomain;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@RequiredArgsConstructor
public class CreateRefCodeDomainService implements CreateRefCodeDomainUseCase {

    private final CreateRefCodeDomain createRefCode;
    private final CreateRefCodeDomainMapper createRefCodeMapper;

    private final CreateRefCodeDomainLoad createRefCodeLoad;

    @Override
    public CreateRefCodeDomainDtoResponse execute(CreateRefCodeDomainDto createRefCodeDomainDto){
        Optional<RefCodeDomain> refCodeExist = createRefCodeLoad.findRefCodeDomain(createRefCodeDomainDto.getNomDomain());

        if (refCodeExist.isPresent())
        { throw new ResourceAlreadyExistException("RefCodeDomain with code=" + createRefCodeDomainDto.getNomDomain() + " exists");
        }
        RefCodeDomain refCodeDomain = createRefCodeMapper.createRefCodeDomainDtoToRefCodeDomain(createRefCodeDomainDto);
        RefCodeDomain savedRefCodeDomain = createRefCode.save(refCodeDomain);
        return  createRefCodeMapper.createRefCodeDomainDtosToRefCodeDomain(savedRefCodeDomain);
    }
}
