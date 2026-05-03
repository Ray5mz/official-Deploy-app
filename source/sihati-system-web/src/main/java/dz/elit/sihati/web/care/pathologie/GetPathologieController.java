package dz.elit.sihati.web.care.pathologie;

import dz.elit.sihati.application.care.pathologie.GetPathologieDtoResponse;
import dz.elit.sihati.application.care.pathologie.GetPathologieUseCase;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequiredArgsConstructor
public class GetPathologieController implements GetPathologieResource {

    private final GetPathologieUseCase getPathologieUseCase;

    @Override
    public List<GetPathologieDtoResponse> getByCodePatient(String codePatient) {
        return getPathologieUseCase.execute(codePatient);
    }
}
