package dz.elit.sihati.domain.care;

import dz.elit.sihati.domain.admin.OrganisationalStructure;
import dz.elit.sihati.domain.care.enumeration.RequestCareCoverageStatus;
import dz.elit.sihati.domain.commons.Auditing;
import dz.elit.sihati.domain.reference.Patient;
import dz.elit.sihati.domain.reference.Provider;
import jakarta.persistence.*;
import lombok.*;

import java.io.Serializable;
import java.time.LocalDate;

@Entity
@Table(name = "request_care_coverages", schema = "care")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class RequestCareCoverage extends Auditing implements Serializable {

  @Id
  @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "care_coverages_gen")
  @SequenceGenerator(
          name = "care_coverages_gen",
          sequenceName = "care_coverages_seq",
          schema = "care",
          allocationSize = 1
  )
  private Long id;

  private String code;

  @Column(columnDefinition = "TEXT")
  private String notes;

  private LocalDate startDate;
  private LocalDate endDate;
  private LocalDate demandeDate;

  private boolean hasCancer;

  // ✅ NEW: simple flag for quick filtering
  @Column(name = "active")
  private boolean active;

  @OneToOne(fetch = FetchType.LAZY)
  @JoinColumn(name = "provider_id")
  private Provider provider;

  @ManyToOne(fetch = FetchType.LAZY)
  @JoinColumn(name = "patient_id")
  private Patient patient;

  @Enumerated(EnumType.STRING)
  private RequestCareCoverageStatus status;

  @ManyToOne(fetch = FetchType.LAZY)
  @JoinColumn(name = "medical_center_id")
  private OrganisationalStructure medicalCenter;


  public boolean isCurrentlyActive() {
    LocalDate today = LocalDate.now();
    return status == RequestCareCoverageStatus.ACCEPTE
            && startDate != null
            && endDate != null
            && (today.isEqual(startDate) || today.isAfter(startDate))
            && today.isBefore(endDate.plusDays(1));
  }

  public boolean isExpired() {
    return endDate != null && LocalDate.now().isAfter(endDate);
  }
}