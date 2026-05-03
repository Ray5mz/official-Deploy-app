package dz.elit.sihati.persistence.care.medicaldoc;

import dz.elit.sihati.application.care.medicaldoc.commands.upload.SaveMedicalDocPort;
import dz.elit.sihati.domain.care.MedicalDoc;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;

@Component
@RequiredArgsConstructor
public class SaveMedicalDocAdapter implements SaveMedicalDocPort {

    private final MedicalDocRepository medicalDocRepository;

    @Override
    public MedicalDoc save(MedicalDoc medicalDoc) {
        return medicalDocRepository.save(medicalDoc);
    }
}