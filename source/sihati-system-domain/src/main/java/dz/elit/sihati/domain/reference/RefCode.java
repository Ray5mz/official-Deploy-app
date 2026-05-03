package dz.elit.sihati.domain.reference;


import dz.elit.sihati.domain.commons.Auditing;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.io.Serializable;
import java.util.Objects;

/**
 * @author gueffaf
 * @version 1.0
 * @created 25-avr.-2018 10:42:22
 */


@Entity
@Table(name = "ref_code", schema = "reference")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class RefCode extends Auditing implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "refcode_gen")
    @SequenceGenerator(name = "refcode_gen", sequenceName = "refcode_seq", schema = "reference", allocationSize = 1)
    protected Long id;

    @ManyToOne(fetch = FetchType.LAZY, cascade = { CascadeType.MERGE})
    @JoinColumn(name = "id_domain", referencedColumnName = "id")
    private RefCodeDomain refCodeDomain;



    @Column(name = "id_domain" ,insertable = false,updatable = false )
    private Long idDomain;

    @Column(name = "code")
    private String code;

    @Column(name = "designation")
    private String designation;






    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        if (!super.equals(o)) return false;
        RefCode refCode = (RefCode) o;
        return   Objects.equals(code, refCode.code) && Objects.equals(refCodeDomain, refCode.refCodeDomain);
    }

    @Override
    public int hashCode() {
        return Objects.hash(super.hashCode(), id, refCodeDomain, code, designation);
    }
}
