package dz.elit.sihati.web.reference.healthprofessionalmedicalcenter;

import dz.elit.sihati.application.reference.healthprofessionalmedicalcenter.GetHealthProfessionalMedicalCenterUseCase;
import dz.elit.sihati.application.reference.healthprofessionalmedicalcenter.HealthProfessionalMedicalCenterDto;
import dz.elit.sihati.commons.WebAdapter;
import lombok.RequiredArgsConstructor;

import java.util.List;

@WebAdapter
@RequiredArgsConstructor
public class HealthProfessionalMedicalCenterController implements HealthProfessionalMedicalCenterResource {

    private final GetHealthProfessionalMedicalCenterUseCase getHealthProfessionalMedicalCenterUseCase;

    @Override
    public List<HealthProfessionalMedicalCenterDto> getAll() {
        return getHealthProfessionalMedicalCenterUseCase.execute();
    }
}