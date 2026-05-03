package dz.elit.sihati.application.reference.patient.queries;

import dz.elit.sihati.domain.reference.Patient;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@RequiredArgsConstructor
public class GetPatientByCodeService implements GetPatientByCodeUseCase {

    private final GetPatientByCodeLoad loadPatient;
    private final GetPatientByCodeMapper  getPatientByCodeMapper;


    @Override
    public GetPatientByCodeDtoResponse execute(String code) {
        Optional<Patient> patientOpt =loadPatient.findPatientByCode(code);
        return patientOpt.map(getPatientByCodeMapper::patientToGetPatientByCodeDtoResponse).orElse(null);
    }

 /*   @Override
    public Patient execute(String code) {
        return loadPatient.findPatientByCode(code)
                .orElseThrow(() -> new ResourceNotFoundException("Patient with code=" + code + " does not exist"));
    }*/


}