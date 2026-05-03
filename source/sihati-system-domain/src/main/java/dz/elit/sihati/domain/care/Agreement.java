package dz.elit.sihati.domain.care;

import dz.elit.sihati.domain.admin.OrganisationalStructure;
import dz.elit.sihati.domain.care.enumeration.AgreementStatus;
import dz.elit.sihati.domain.commons.Auditing;
import dz.elit.sihati.domain.reference.Provider;
import jakarta.persistence.*;
import lombok.*;

import java.io.Serializable;
import java.time.LocalDate;

@Entity
@Table(name = "agreement", schema = "care")
@Getter @Setter @NoArgsConstructor @AllArgsConstructor @Builder
public class Agreement extends Auditing implements Serializable {

  @Id
  @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "agreement_gen")
  @SequenceGenerator(name = "agreement_gen", sequenceName = "agreement_seq", schema = "care", allocationSize = 1)
  @Column(name = "id")
  private Long id;

  @Column(name = "code")
  private String code;

  @Column(name = "agreement_number")
  private String agreementNumber;

  @Column(name = "notes")
  private String notes;

  @Column(name = "start_date")
  private LocalDate startDate;

  @Column(name = "end_date")
  private LocalDate endDate;

  @Enumerated(EnumType.STRING)
  @Column(name = "status")
  private AgreementStatus status;

  @OneToOne(fetch = FetchType.LAZY)
  @JoinColumn(name = "organisational_structure_id")
  private OrganisationalStructure organisationalStructure;

  @OneToOne(fetch = FetchType.LAZY)
  @JoinColumn(name = "provider_id")
  private Provider provider;


  @Column(name = "enabled")
  private Boolean enabled = true;

}

