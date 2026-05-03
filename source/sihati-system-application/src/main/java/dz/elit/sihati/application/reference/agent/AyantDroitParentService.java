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

        Patient agent = loadPort.findEmployeeByPatientCode(codePatient)
                .orElseThrow(() -> new RuntimeException("Agent not found for patient: " + codePatient));

        return List.of(mapper.toDto(agent.getEmployee()));
    }
}