package dz.elit.sihati.application.reference.healthprofessionalmedicalcenter;

import java.util.List;

public interface GetHealthProfessionalMedicalCenterPort {
    List<HealthProfessionalMedicalCenterDto> loadAll();
}