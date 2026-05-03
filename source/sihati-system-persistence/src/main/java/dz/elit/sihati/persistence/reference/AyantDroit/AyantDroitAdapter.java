package dz.elit.sihati.persistence.reference.AyantDroit;

import dz.elit.sihati.application.reference.agent.AyantDroitParentLoad;
import dz.elit.sihati.application.reference.ayantdroit.AyantDroitByEmployeeNumberLoad;
import dz.elit.sihati.domain.reference.Patient;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Optional;

@Component
@RequiredArgsConstructor
public class AyantDroitAdapter implements AyantDroitByEmployeeNumberLoad , AyantDroitParentLoad {

    private final AyantDroitRepository repository;

    @Override
    public List<Patient> findByEmployeeNumber(String employeeNumber) {
        return repository.findByEmployeeNumber(employeeNumber);
    }


    @Override
    public Optional<Patient> findEmployeeByPatientCode(String codePatient) {
        return repository.findAgentByPatientCode(codePatient);
    }
}