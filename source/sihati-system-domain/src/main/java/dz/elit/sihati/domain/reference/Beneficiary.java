package dz.elit.sihati.domain.reference;

import dz.elit.sihati.domain.commons.Auditing;
import dz.elit.sihati.domain.reference.enumeration.BeneficiaryRelation;
import jakarta.persistence.*;
import lombok.*;

import java.io.Serializable;
import java.time.LocalDate;
@Entity
@Table(name = "beneficiary", schema = "reference")
@Getter @Setter @NoArgsConstructor @AllArgsConstructor @Builder
public class Beneficiary extends Auditing implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "beneficiary_gen")
    @SequenceGenerator(name = "beneficiary_gen", sequenceName = "beneficiary_seq", schema = "reference", allocationSize = 1)
    @Column(name = "id")
    private Long id;

    @Column(name = "code")
    private String code;

    @Column(name = "first_name")
    private String firstName;

    @Column(name = "last_name")
    private String lastName;

    @Column(name = "date_of_birth")
    private LocalDate dateOfBirth;

    @Column(name = "gender")
    private String gender;

    @Column(name = "blood_group")
    private String bloodGroup;

    @Column(name = "social_security_number")
    private String socialSecurityNumber;

    @Column(name = "address")
    private String address;

    @Column(name = "beneficiary_relation")
    @Enumerated(EnumType.STRING)
    private BeneficiaryRelation beneficiaryRelation;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "employee_id")
    private Employee employee;

    @Column(name = "enabled")
    private Boolean enabled = true;


}
