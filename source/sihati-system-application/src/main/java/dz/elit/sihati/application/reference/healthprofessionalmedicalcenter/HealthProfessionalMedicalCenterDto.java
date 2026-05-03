package dz.elit.sihati.application.reference.healthprofessionalmedicalcenter;

import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
public class HealthProfessionalMedicalCenterDto {
    private Long id;
    private String code;
    private String designation;
    private String address;
    private String phone;
    private String fax;
    private String structureType;
    private Boolean enabled;
}