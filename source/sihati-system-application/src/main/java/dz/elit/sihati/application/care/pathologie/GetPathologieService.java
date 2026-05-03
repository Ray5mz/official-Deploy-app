package dz.elit.sihati.application.care.pathologie;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class GetPathologieService implements GetPathologieUseCase {

    private final GetPathologieLoad pathologieLoad;

    @Override
    public List<GetPathologieDtoResponse> execute(String codePatient) {
        return pathologieLoad.findByPatientCodePatient(codePatient)
                .stream()
                .map(p -> GetPathologieDtoResponse.builder()
                        .id(p.getId())
                        .nom(p.getNom())
                        .severite(p.getSeverite().name())
                        .build())
                .collect(Collectors.toList());
    }
}