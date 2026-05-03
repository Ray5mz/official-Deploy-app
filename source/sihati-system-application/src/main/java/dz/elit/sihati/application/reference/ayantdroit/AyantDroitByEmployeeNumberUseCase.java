package dz.elit.sihati.application.reference.ayantdroit;

import java.util.List;

public interface AyantDroitByEmployeeNumberUseCase {

    List<AyantDroitByEmployeeNumberDtoResponse> execute(String employeeNumber);

}