package dz.elit.sihati.web.reference.specialty;
import dz.elit.sihati.application.reference.specialty.GetSpecialtyDtoResponse;
import dz.elit.sihati.application.reference.specialty.GetSpecialtyUseCase;
import dz.elit.sihati.commons.WebAdapter;
import lombok.RequiredArgsConstructor;

import java.util.List;

@WebAdapter
@RequiredArgsConstructor
public class SpecialtyController implements SpecialtyResource {

    private final GetSpecialtyUseCase getSpecialtyUseCase;

    @Override
    public List<GetSpecialtyDtoResponse> loadAll() {
        return getSpecialtyUseCase.execute();
    }
}