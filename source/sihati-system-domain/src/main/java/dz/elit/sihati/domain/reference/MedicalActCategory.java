package dz.elit.sihati.domain.reference;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import dz.elit.sihati.domain.commons.Auditing;
import jakarta.persistence.*;
import lombok.*;

import java.io.Serializable;
import java.math.BigDecimal;

@Entity
@Table(name = "medical_act_category", schema = "reference")
@Getter @Setter @NoArgsConstructor @AllArgsConstructor @Builder
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class MedicalActCategory extends Auditing implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "medical_act_category_gen")
    @SequenceGenerator(name = "medical_act_category_gen", sequenceName = "medical_act_category_seq", schema = "reference", allocationSize = 1)
    @Column(name = "id")
    private Long id;
    @Column(name = "code")
    private String code;

    @Column(name = "name")
    private String name;

    @Column(name = "description")
    private String description;

    @Column(name = "max_reimbursement_amount", precision = 15, scale = 2)
    private BigDecimal maxReimbursementAmount;


    @Column(name = "medical_center_coverage_percentage")
    private BigDecimal medicalCenterCoveragePercentage  = BigDecimal.ZERO;

    @Column(name = "enabled")
    private Boolean enabled = true;


}
