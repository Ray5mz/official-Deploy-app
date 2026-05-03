package dz.elit.sihati.domain.reference;

import dz.elit.sihati.domain.admin.OrganisationalStructure;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.SuperBuilder;

import java.io.Serializable;

@Entity
@Table(
        name = "health_professional_medical_center",
        schema = "reference"
)
@Getter @Setter @NoArgsConstructor @AllArgsConstructor @SuperBuilder
public class HealthProfessionalMedicalCenter implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    private HealthProfessionalMedicalCenterId id;


    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "health_professional_id", nullable = false, insertable = false, updatable = false)
    private HealthProfessional healthProfessional;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "medical_center_id", nullable = false, insertable = false, updatable = false)
    private OrganisationalStructure organisationalStructure;


}
