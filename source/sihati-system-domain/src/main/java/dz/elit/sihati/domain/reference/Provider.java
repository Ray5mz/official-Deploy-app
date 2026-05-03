package dz.elit.sihati.domain.reference;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import dz.elit.sihati.domain.commons.Auditing;
import jakarta.persistence.*;
import lombok.*;

import java.io.Serializable;
@Entity
@Table(name = "provider", schema = "reference")
@Getter @Setter @NoArgsConstructor @AllArgsConstructor @Builder
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class Provider extends Auditing implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "provider_gen")
    @SequenceGenerator(name = "provider_gen", sequenceName = "provider_seq", schema = "reference", allocationSize = 1)
    @Column(name = "id")
    private Long id;
    @Column(name = "code")
    private String code;

    @Column(name = "name")
    private String name;

    @Column(name = "phone")
    private String phone;

    @Column(name = "email")
    private String email;

    @Column(name = "address")
    private String address;


    @Column(name = "manager_name")
    private String managerName;


    @Column(name = "license_number")
    private String licenseNumber;


    @Column(name = "company_name")
    private String companyName;



    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "commune_id")
    private Commune commune;

    @Column(name = "enabled")
    private Boolean enabled = true;

    @JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "category_id")
    private MedicalActCategory medicalActCategory;


}
