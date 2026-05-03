package dz.elit.sihati.web.reference.commune;

import dz.elit.sihati.application.reference.commune.queries.getcommunelist.GetCommuneListDtoResponse;
import dz.elit.sihati.application.reference.commune.queries.getcommunelist.GetCommuneListUseCase;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
@RequiredArgsConstructor
public class CommuneController implements CommuneResource {

    private final GetCommuneListUseCase getCommuneListUseCase;

    @Override
    public List<GetCommuneListDtoResponse> getCommuneList() {
        return getCommuneListUseCase.execute();
    }
}
