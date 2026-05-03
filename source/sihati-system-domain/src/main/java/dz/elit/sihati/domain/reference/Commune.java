package dz.elit.sihati.domain.reference;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import dz.elit.sihati.domain.commons.Auditing;
import jakarta.persistence.*;
import lombok.*;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * @author gueffaf
 * @version 1.0
 * @created 25-avr.-2018 10:42:51
 */
@Builder
@Entity
@Table(name = "commune", schema = "reference")
@Getter
@Setter
@EqualsAndHashCode(exclude = {"wilaya"}, callSuper = false)
@NoArgsConstructor
@AllArgsConstructor
public class Commune extends Auditing implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "commune_gen")
    @SequenceGenerator(name = "commune_gen", sequenceName = "commune_seq", schema = "reference", allocationSize = 1)
    protected Long id;

    @Column(name = "code", unique = true)
    private String code;

    @Column(name = "designation")
    private String designation;

    @Column(name = "daira")
    private String daira;


    @JsonIgnoreProperties({"communes", "hibernateLazyInitializer", "handler"})
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "wilaya_id", nullable = false)
    private Wilaya wilaya;

    @JsonIgnoreProperties({"commune", "hibernateLazyInitializer", "handler"})
    @OneToMany(mappedBy = "commune", cascade = CascadeType.ALL)
    private List<Provider> provider = new ArrayList<>();

}
