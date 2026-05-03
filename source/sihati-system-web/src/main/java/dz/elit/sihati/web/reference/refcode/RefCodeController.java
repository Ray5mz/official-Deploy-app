package dz.elit.sihati.web.reference.refcode;

import dz.elit.sihati.application.reference.refcode.command.createrefcode.CreateRefCodeDto;
import dz.elit.sihati.application.reference.refcode.command.createrefcode.CreateRefCodeDtoResponse;
import dz.elit.sihati.application.reference.refcode.command.createrefcode.CreateRefCodeUseCase;
import dz.elit.sihati.application.reference.refcode.command.deleterefcode.DeleteRefCodeUseCase;
import dz.elit.sihati.application.reference.refcode.command.updaterefcode.UpdateRefCodeDto;
import dz.elit.sihati.application.reference.refcode.command.updaterefcode.UpdateRefCodeDtoResponse;
import dz.elit.sihati.application.reference.refcode.command.updaterefcode.UpdateRefCodeUseCase;
import dz.elit.sihati.application.reference.refcode.queries.getrefcode.GetRefCodeDtoResponse;
import dz.elit.sihati.application.reference.refcode.queries.getrefcode.GetRefCodeUseCase;
import dz.elit.sihati.application.reference.refcode.queries.getrefcodelist.GetRefCodeListDtoResponse;
import dz.elit.sihati.application.reference.refcode.queries.getrefcodelist.GetRefCodeListUseCase;
import dz.elit.sihati.commons.WebAdapter;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;

@WebAdapter
@RequiredArgsConstructor
public class RefCodeController implements RefCodeResource {

    private final GetRefCodeListUseCase getListRefCodeUseCase;
     private final GetRefCodeUseCase getRefCodeUseCase;
    private final CreateRefCodeUseCase createRefCodeUseCase;
    private final DeleteRefCodeUseCase deleteRefCodeUseCase;
    private final UpdateRefCodeUseCase updateRefCodeUseCase;




    @Override
    public GetRefCodeListDtoResponse getRefCodeList(Long idDomain) {
        return getListRefCodeUseCase.execute(idDomain);
    }




    @Override
    public GetRefCodeDtoResponse getRefCodeByIdDomainById(Long idDomain, Long id) {
        return getRefCodeUseCase.execute(idDomain,id);
    }




    @Override
    public CreateRefCodeDtoResponse createRefCode(@Valid CreateRefCodeDto createRefCodeDto) {
        return createRefCodeUseCase.execute(createRefCodeDto);
    }

    @Override
    public ResponseEntity<?> deleteRefCode(String domain, String code) {
        return ResponseEntity.ok(deleteRefCodeUseCase.execute(code,domain));
    }

    @Override
    public UpdateRefCodeDtoResponse updateRefCode(String domain, String code, UpdateRefCodeDto refCodeDto) {
        return updateRefCodeUseCase.execute(refCodeDto, code,domain);
    }

}
