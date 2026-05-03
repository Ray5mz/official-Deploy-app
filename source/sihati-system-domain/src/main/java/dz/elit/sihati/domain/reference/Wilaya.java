package dz.elit.sihati.domain.reference;

import dz.elit.sihati.domain.commons.Auditing;
import jakarta.persistence.*;
import lombok.*;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * @author gueffaf
 * @version 1.0
 * @created 25-avr.-2018 10:42:22
 */
@Builder
@Entity
@Table(name = "wilaya", schema = "reference")
@Getter
@Setter
@EqualsAndHashCode(exclude = {"communes"}, callSuper = false)
@AllArgsConstructor
public class Wilaya extends Auditing implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "wilaya_gen")
    @SequenceGenerator(name = "wilaya_gen", sequenceName = "wilaya_seq", schema = "reference", allocationSize = 1)
    protected Long id;

    @Column(name = "code", unique = true)
    private String code;

    @Column(name = "designation")
    private String designation;

    @OneToMany(mappedBy = "wilaya", cascade = CascadeType.ALL)
    private List<Commune> communes = new ArrayList<>();




    public Wilaya() {

    }

    public void addCommune(Commune commune) {
        communes.add(commune);
        commune.setWilaya(this);
    }

    public void removeCommune(Commune commune) {
        communes.remove(commune);
        commune.setWilaya(null);
    }

}
