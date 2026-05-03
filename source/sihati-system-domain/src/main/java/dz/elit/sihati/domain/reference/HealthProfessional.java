package dz.elit.sihati.domain.reference;

import dz.elit.sihati.domain.commons.Auditing;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.SuperBuilder;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "health_professional", schema = "reference")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@SuperBuilder
public class HealthProfessional extends Auditing implements Serializable {

    @Id
    @Column(name = "id", updatable = false, nullable = false)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "health_professional_gen")
    @SequenceGenerator(name = "health_professional_gen", sequenceName = "health_professional_seq", schema = "reference", allocationSize = 1)
    private Long id;

    @Column(name = "first_name")
    private String firstName;

    @Column(name = "last_name")
    private String lastName;


    @Column(name = "phone_number")
    private String phoneNumber;

    @Column(name = "license_number", nullable = false)
    private String licenseNumber;

    @Column(name = "nick_name", nullable = false)
    private String nickName;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "specialty_id")
    private Specialty specialty;

    @OneToMany(
            mappedBy = "healthProfessional",
            cascade = CascadeType.ALL,
            orphanRemoval = true,
            fetch = FetchType.LAZY
    )
    private List<HealthProfessionalMedicalCenter> planning = new ArrayList<>();
}