package dz.elit.sihati.domain.reference;

import dz.elit.sihati.domain.commons.Auditing;
import dz.elit.sihati.domain.reference.enumeration.FamilySituation;
import jakarta.persistence.*;
import lombok.*;

import java.io.Serializable;
import java.time.LocalDate;
@Entity
@Table(name = "employee", schema = "reference")
@Getter @Setter @NoArgsConstructor @AllArgsConstructor @Builder
public class Employee extends Auditing implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "employee_gen")
    @SequenceGenerator(name = "employee_gen", sequenceName = "employee_seq", schema = "reference", allocationSize = 1)
    @Column(name = "id")
    private Long id;

    @Column(name = "employee_number")
    private String employeeNumber;

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

    @Column(name = "email")
    private String email;

    @Column(name = "phone_number")
    private String phoneNumber;

    @Column(name = "blood_group")
    private String bloodGroup;

    @Column(name = "role")
    private String role;

    @Column(name = "address")
    private String address;

    @Column(name = "social_security_number")
    private String socialSecurityNumber;

    @Column(name = "subsidiary")
    private String subsidiary;

    @Column(name = "enabled")
    private Boolean enabled = true;


    @Column(name = "system_entity")
    @Builder.Default
    private Boolean systemEntity = false;

    @Enumerated(EnumType.STRING)
    @Column(name = "family_situation")
    private FamilySituation familySituation;

}

