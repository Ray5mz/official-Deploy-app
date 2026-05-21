package dz.elit.sihati.application.reference.agent;

import dz.elit.sihati.domain.reference.Patient;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class AyantDroitParentService implements AyantDroitParentUseCase {

    private final AyantDroitParentLoad loadPort;
    private final AyantDroitParentMapper mapper;

    @Override
    public List<AyantDroitParentDtoResponse> execute(String codePatient) {

        Patient patient = loadPort.findEmployeeByPatientCode(codePatient)
                .orElseThrow(() -> new RuntimeException("Agent not found for patient: " + codePatient));

        // Pass the full Patient so the mapper can access both
        // employee fields (firstName, lastName, employeeNumber)
        // and user fields (email, phoneNumber)
        return List.of(mapper.toDto(patient));
    }
}