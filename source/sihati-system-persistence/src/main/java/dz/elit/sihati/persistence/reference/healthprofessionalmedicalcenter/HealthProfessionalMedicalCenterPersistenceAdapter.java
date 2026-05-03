package dz.elit.sihati.persistence.reference.healthprofessionalmedicalcenter;

import dz.elit.sihati.application.reference.healthprofessionalmedicalcenter.GetHealthProfessionalMedicalCenterPort;
import dz.elit.sihati.application.reference.healthprofessionalmedicalcenter.HealthProfessionalMedicalCenterDto;
import dz.elit.sihati.domain.admin.OrganisationalStructure;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.stream.Collectors;

@Component
@RequiredArgsConstructor
public class HealthProfessionalMedicalCenterPersistenceAdapter implements GetHealthProfessionalMedicalCenterPort {

    private final HealthProfessionalMedicalCenterRepository repository;

    @Override
    public List<HealthProfessionalMedicalCenterDto> loadAll() {
        return repository.findAllActive().stream()
                .map(this::toDto)
                .collect(Collectors.toList());
    }

    private HealthProfessionalMedicalCenterDto toDto(OrganisationalStructure o) {
        return HealthProfessionalMedicalCenterDto.builder()
                .id(o.getId())
                .code(o.getCode())
                .designation(o.getDesignation())
                .address(o.getAddress())
                .phone(o.getPhone())
                .fax(o.getFax())
                .structureType(o.getStructureType() != null ? o.getStructureType().name() : null)
                .enabled(o.isEnabled())
                .build();
    }
}