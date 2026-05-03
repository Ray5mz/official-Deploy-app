package dz.elit.sihati.application.reference.ayantdroit;

import dz.elit.sihati.domain.reference.Patient;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class AyantDroitByEmployeeNumberService
        implements AyantDroitByEmployeeNumberUseCase {

    private final AyantDroitByEmployeeNumberLoad loadPort;
    private final AyantDroitByEmployeeNumberMapper mapper;

    @Override
    public List<AyantDroitByEmployeeNumberDtoResponse> execute(String employeeNumber) {

        List<Patient> patients =
                loadPort.findByEmployeeNumber(employeeNumber);

        return mapper.toDtos(patients);
    }
}