package dz.elit.sihati.domain.reference;

import dz.elit.sihati.domain.admin.User;
import dz.elit.sihati.domain.care.Pathologie;
import dz.elit.sihati.domain.reference.enumeration.*;
import jakarta.persistence.*;
import lombok.*;
import lombok.experimental.SuperBuilder;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "patient", schema = "reference")
@Getter @Setter @NoArgsConstructor @AllArgsConstructor @SuperBuilder
public class Patient extends User implements Serializable {

//
//    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "patient_gen")
//    @SequenceGenerator(name = "patient_gen", sequenceName = "patient_seq", schema = "reference", allocationSize = 1)


    @Column(name = "social_security_number")
    private String socialSecurityNumber;
//
//    @Column(name = "code")
//    private String code;



    @Column(name = "date_of_birth")
    private LocalDate dateOfBirth;

    @Column(name = "gender")
    private String gender;

    @Column(name = "blood_group")
    private String bloodGroup;



    @Column(name = "system_entity")
    @Builder.Default
    private Boolean systemEntity = false;

    @Enumerated(EnumType.STRING)
    @Column(name = "employment_status")
    private EmploymentStatus employmentStatus;

    @Enumerated(EnumType.STRING)
    @Column(name = "patient_category")
    private PatientCategory patientCategory;

    @Enumerated(EnumType.STRING)
    @Column(name = "internal_type")
    private PatientInternalType internalType;

    @Enumerated(EnumType.STRING)
    @Column(name = "relationship")
    private BeneficiaryRelation relationship;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "commune_id")
    private Commune commune;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "employee_id")
    private Employee employee;

    @Column(name = "enabled")
    private Boolean enabled = true;

    @Enumerated(EnumType.STRING)
    @Column(name = "family_situation")
    private FamilySituation familySituation;

    @OneToMany(mappedBy = "patient", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<Pathologie> pathologies = new ArrayList<>();




}
