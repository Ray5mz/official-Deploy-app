package dz.elit.sihati.application.reference.refcodedomain.commands.deleterefcodedomain;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class DeleteRefCodeDomainService implements DeleteRefCodeDomainUseCase {

    private final DeleteRefCodeDomain deleteRefCode;
    @Override
    public long execute(  String nomDomain) {
        return deleteRefCode.deleteRefCodeDomain(   nomDomain);
    }
}
