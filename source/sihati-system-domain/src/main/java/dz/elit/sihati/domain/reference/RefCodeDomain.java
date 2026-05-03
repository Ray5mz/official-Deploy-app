package dz.elit.sihati.domain.reference;

import dz.elit.sihati.domain.commons.Auditing;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/**
 * @author gueffaf
 * @version 1.0
 * @created 25-avr.-2018 10:42:22
 */
@Entity
@Table(name = "ref_code_domain", schema = "reference")
@Getter
@Setter
 @NoArgsConstructor
@AllArgsConstructor
public class RefCodeDomain extends Auditing implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "refcodedomain_gen")
    @SequenceGenerator(name = "refcodedomain_gen", sequenceName = "refcodedomain_seq", schema = "reference", allocationSize = 1)
    protected Long id;

    @Column(name = "nom_domain")
    private String nomDomain;

    @Column(name = "designation")
    private String designation;

    @OneToMany(mappedBy = "refCodeDomain", cascade = CascadeType.ALL)
    private List<RefCode> refCodes = new ArrayList<>();

    public RefCodeDomain(String nomDomain, String designation) {
        this.nomDomain = nomDomain;
        this.designation = designation;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        if (!super.equals(o)) return false;
        RefCodeDomain refCodeDomain = (RefCodeDomain) o;
        return   Objects.equals(nomDomain ,refCodeDomain.nomDomain)  ;
    }

    @Override
    public int hashCode() {
        return Objects.hash(super.hashCode(), id, nomDomain, designation);
    }


}
