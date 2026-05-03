package dz.elit.sihati.persistence.reference.healthprofessionalmedicalcenter;

import dz.elit.sihati.domain.admin.OrganisationalStructure;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface HealthProfessionalMedicalCenterRepository
        extends JpaRepository<OrganisationalStructure, Long> {

    @Query("SELECT o FROM OrganisationalStructure o WHERE o.deleted = false")
    List<OrganisationalStructure> findAllActive();
}