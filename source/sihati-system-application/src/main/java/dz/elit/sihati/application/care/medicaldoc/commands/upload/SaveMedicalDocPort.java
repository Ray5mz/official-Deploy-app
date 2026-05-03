package dz.elit.sihati.application.care.medicaldoc.commands.upload;

import dz.elit.sihati.domain.care.MedicalDoc;

public interface SaveMedicalDocPort {
    MedicalDoc save(MedicalDoc medicalDoc);
}