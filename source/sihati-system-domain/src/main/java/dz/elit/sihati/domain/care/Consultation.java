package dz.elit.sihati.domain.care;

import dz.elit.sihati.domain.admin.OrganisationalStructure;
import dz.elit.sihati.domain.commons.Auditing;
import dz.elit.sihati.domain.reference.HealthProfessional;
import dz.elit.sihati.domain.reference.Patient;
import jakarta.persistence.*;
import lombok.*;

import java.io.Serializable;
import java.time.LocalDateTime;

@Entity
@Table(name = "consultation", schema = "care")
@Getter @Setter @NoArgsConstructor @AllArgsConstructor @Builder
public class Consultation extends Auditing implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "consultation_gen")
    @SequenceGenerator(name = "consultation_gen", sequenceName = "consultation_seq", schema = "care", allocationSize = 1)
    @Column(name = "id")
    private Long id;
    @Column(name = "consultation_number")
    private String consultationNumber;

    @Column(name = "consultation_date")
    private LocalDateTime consultationDate;

    @Column(name = "reason_for_consultation")
    private String reasonForConsultation;

    @Column(name = "diagnosis")
    private String diagnosis;

    @Column(name = "diagnosis_confidential")
    private String diagnosisConfidential;


    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "patient_id")
    private Patient patient;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "center_id")
    private OrganisationalStructure organisationalStructure ;


    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "health_professional_id")
    private HealthProfessional healthProfessional;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "constante_vitale_id")
    private ConstanteVitale constanteVitale;

    @Column(name = "enabled")
    private Boolean enabled = true;

}

