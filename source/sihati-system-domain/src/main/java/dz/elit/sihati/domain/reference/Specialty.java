package dz.elit.sihati.domain.reference;

import dz.elit.sihati.domain.care.TimingDoctor;
import dz.elit.sihati.domain.commons.Auditing;
import jakarta.persistence.*;
import lombok.*;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "specialty", schema = "reference")
@Getter @Setter @NoArgsConstructor @AllArgsConstructor @Builder
public class Specialty extends Auditing implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "specialty_gen")
    @SequenceGenerator(name = "specialty_gen", sequenceName = "specialty_seq", schema = "reference", allocationSize = 1)
    @Column(name = "id")
    private Long id;

    @Column(name = "code")
    private String code;

    @Column(name = "code_color")
    private String codeColor;

    @Column(name = "name")
    private String name;

    @Column(name = "description")
    private String description;

    @OneToMany(mappedBy = "specialty", cascade = CascadeType.ALL)
    private List<HealthProfessional> healthProfessional = new ArrayList<>();

    @OneToMany(mappedBy = "specialty", cascade = CascadeType.ALL)
    private List<TimingDoctor> timingDoctor = new ArrayList<>();



}
