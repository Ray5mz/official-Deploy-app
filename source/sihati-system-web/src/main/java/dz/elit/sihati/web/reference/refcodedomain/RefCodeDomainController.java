package dz.elit.sihati.web.reference.refcodedomain;


import dz.elit.sihati.application.reference.refcodedomain.commands.createrefcodedomain.CreateRefCodeDomainDto;
import dz.elit.sihati.application.reference.refcodedomain.commands.createrefcodedomain.CreateRefCodeDomainDtoResponse;
import dz.elit.sihati.application.reference.refcodedomain.commands.createrefcodedomain.CreateRefCodeDomainUseCase;
import dz.elit.sihati.application.reference.refcodedomain.commands.deleterefcodedomain.DeleteRefCodeDomainUseCase;
import dz.elit.sihati.application.reference.refcodedomain.commands.updaterefcodedomain.UpdateRefCodeDomainDto;
import dz.elit.sihati.application.reference.refcodedomain.commands.updaterefcodedomain.UpdateRefCodeDomainDtoResponse;
import dz.elit.sihati.application.reference.refcodedomain.commands.updaterefcodedomain.UpdateRefCodeDomainUseCase;
import dz.elit.sihati.application.reference.refcodedomain.queries.getdomainrefcodelist.getdomainrefcodelist.GetDomainRefCodeListDtoResponse;
import dz.elit.sihati.application.reference.refcodedomain.queries.getdomainrefcodelist.getdomainrefcodelist.GetDomainRefCodeListUseCase;
import dz.elit.sihati.commons.WebAdapter;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;

import java.util.List;

@WebAdapter
@RequiredArgsConstructor
public class RefCodeDomainController implements RefCodeDomainResource {


    private final GetDomainRefCodeListUseCase getDomainListUseCase;
    private final CreateRefCodeDomainUseCase createRefCodeDomainUseCase;
    private final DeleteRefCodeDomainUseCase deleteRefCodeDomainUseCase;
    private final UpdateRefCodeDomainUseCase updateRefCodeDomainUseCase;

    @Override
    public List<GetDomainRefCodeListDtoResponse> getRefCodeDomainList() {
        return getDomainListUseCase.execute();
    }

    @Override
    public CreateRefCodeDomainDtoResponse createRefCodeDomain(CreateRefCodeDomainDto createRefCodeDomainDto) {
        return createRefCodeDomainUseCase.execute(createRefCodeDomainDto);
    }

    @Override
    public ResponseEntity<?> deleteRefCodeDomain(String domain) {
        return ResponseEntity.ok(deleteRefCodeDomainUseCase.execute(domain));
    }

    @Override
    public UpdateRefCodeDomainDtoResponse updateRefCodeDomain(String domain, UpdateRefCodeDomainDto refCodeDomainDto) {
        return updateRefCodeDomainUseCase.execute(refCodeDomainDto,domain);
    }
}
