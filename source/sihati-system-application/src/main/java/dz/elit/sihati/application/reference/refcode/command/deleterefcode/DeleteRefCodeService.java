package dz.elit.sihati.application.reference.refcode.command.deleterefcode;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class DeleteRefCodeService implements DeleteRefCodeUseCase {

    private final DeleteRefCode deleteRefCode;
    @Override
    public long execute( String code, String nomDomain) {
        return deleteRefCode.deleteRefCode(  code,  nomDomain);
    }
}
