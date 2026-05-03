package dz.elit.sihati.domain.care;

import dz.elit.sihati.domain.admin.OrganisationalStructure;
import dz.elit.sihati.domain.care.enumeration.TimingDoctorStatus;
import dz.elit.sihati.domain.reference.HealthProfessional;
import dz.elit.sihati.domain.reference.Specialty;
import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDateTime;


@Entity
@Table(name = "timing_doctor", schema = "care")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class TimingDoctor {
  @Id

  @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "timing_doctor_id_gen")
  @SequenceGenerator(name = "timing_doctor_id_gen", sequenceName = "timing_doctor_seq", schema = "care", allocationSize = 1)

  @Column(name = "id", nullable = false)
  private Long id;

  @Column(name = "code")
  private String code;

  @Column(name = "duration")
  private Integer duration;

  @Column(name = "timing_doctor_date")
  private LocalDateTime timingDoctorDate;

  @Column(name = "status", columnDefinition = "care.timing_status_enum")
  @Enumerated(EnumType.STRING)
  private TimingDoctorStatus timingDoctorStatus;


  @ManyToOne(fetch = FetchType.LAZY, optional = false)
  @JoinColumn(name = "specialty_id", nullable = false)
  private Specialty specialty;

  @OneToOne(fetch = FetchType.LAZY)
  @JoinColumn(name = "medical_center_id")
  private OrganisationalStructure medicalCenter;

  @OneToOne(fetch = FetchType.LAZY)
  @JoinColumn(name = "healthProfessional_id")
  private HealthProfessional healthProfessional;

}
