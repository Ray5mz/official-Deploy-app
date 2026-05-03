package dz.elit.sihati.web.reference.AyantDroit;

import dz.elit.sihati.application.reference.agent.AyantDroitParentDtoResponse;
import dz.elit.sihati.application.reference.agent.AyantDroitParentUseCase;
import dz.elit.sihati.application.reference.ayantdroit.AyantDroitByEmployeeNumberDtoResponse;
import dz.elit.sihati.application.reference.ayantdroit.AyantDroitByEmployeeNumberUseCase;
import dz.elit.sihati.application.reference.patient.queries.GetPatientByCodeLoad;
import dz.elit.sihati.domain.reference.Patient;
import dz.elit.sihati.domain.reference.enumeration.PatientInternalType;
import dz.elit.sihati.web.reference.patient.PatientController;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;

import java.util.Collections;
import java.util.List;

@Controller
@RequiredArgsConstructor
public class AyantDroitController {

    private final AyantDroitByEmployeeNumberUseCase useCase;
    private final PatientController patientController;
    private final GetPatientByCodeLoad loadPatient;
    private final AyantDroitParentUseCase parentUseCase;



    public List<AyantDroitByEmployeeNumberDtoResponse> getAyantsDroit(String codePatient) {

        Patient patient = loadPatient.findPatientByCode(codePatient)
                .orElseThrow(() -> new RuntimeException("Patient not found"));

        // Si c'est un BENEFICIARY → liste vide
        if (PatientInternalType.BENEFICIARY.equals(patient.getInternalType())) {
            return Collections.emptyList();
        }

        // Si c'est un AGENT → retourner ses ayants droit
        return useCase.execute(patient.getCode());
    }



    public List<AyantDroitParentDtoResponse> getEmployeeByPatientCode(String codePatient) {

        Patient patient = loadPatient.findPatientByCode(codePatient)
                .orElseThrow(() -> new RuntimeException("Patient not found: " + codePatient));

        if (PatientInternalType.AGENT.equals(patient.getInternalType())) {
            return Collections.emptyList();
        }

        return parentUseCase.execute(codePatient);
    }


}