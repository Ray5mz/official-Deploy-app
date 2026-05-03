package dz.elit.sihati.domain.care;

import dz.elit.sihati.domain.admin.OrganisationalStructure;
import dz.elit.sihati.domain.care.enumeration.RequestAppointmentStatus;
import dz.elit.sihati.domain.reference.Patient;
import dz.elit.sihati.domain.reference.Specialty;
import jakarta.persistence.*;
import lombok.*;

import java.io.Serializable;
import java.time.LocalDateTime;

@Entity
@Table(name = "request_appointment", schema = "care")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class RequestAppointment implements Serializable {
  private static final long serialVersionUID = 1L;
  @Id
  @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "appointment_gen")
  @SequenceGenerator(name = "appointment_gen", sequenceName = "request_appointment_seq", schema = "care", allocationSize = 1)
  @Column(name = "id")
  private Long id;

  @Column(name = "appointment_number", length = 50)
  private String appointmentNumber;

  @Column(name = "appointment_date")
  private LocalDateTime appointmentDate;

  @Enumerated(EnumType.STRING)
  @Column(name = "status")
  private RequestAppointmentStatus status;

  @Column(name = "reason", length = Integer.MAX_VALUE)
  private String reason;

  @OneToOne(fetch = FetchType.LAZY)
  @JoinColumn(name = "patient_id")
  private Patient patient;

  @OneToOne(fetch = FetchType.LAZY)
  @JoinColumn(name = "timing_doctor_id")
  private TimingDoctor timingDoctor;

  @ManyToOne(fetch = FetchType.LAZY)
  @JoinColumn(name = "medical_center_id")
  private OrganisationalStructure medicalCenter;

  @ManyToOne(fetch = FetchType.LAZY)
  @JoinColumn(name = "specialty_id")
  private Specialty specialty;
}
