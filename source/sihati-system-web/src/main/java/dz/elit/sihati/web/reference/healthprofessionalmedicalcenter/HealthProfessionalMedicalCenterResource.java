package dz.elit.sihati.web.reference.healthprofessionalmedicalcenter;

import dz.elit.sihati.application.reference.healthprofessionalmedicalcenter.HealthProfessionalMedicalCenterDto;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/production/health-professional-medical-center")
public interface HealthProfessionalMedicalCenterResource {

    @GetMapping
    List<HealthProfessionalMedicalCenterDto> getAll();
}