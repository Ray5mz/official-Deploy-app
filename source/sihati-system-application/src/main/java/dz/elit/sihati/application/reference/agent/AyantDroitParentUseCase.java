package dz.elit.sihati.application.reference.agent;

import java.util.List;

public interface AyantDroitParentUseCase {
    List<AyantDroitParentDtoResponse> execute(String codePatient);
}