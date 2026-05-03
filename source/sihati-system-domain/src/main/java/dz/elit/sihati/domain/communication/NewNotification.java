package dz.elit.sihati.domain.communication;

import dz.elit.sihati.domain.communication.enumeration.NotificationType;
import dz.elit.sihati.domain.reference.Patient;
import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDateTime;

@Entity
@Table(name = "newnotification", schema = "communication")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class NewNotification {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "newnotification_gen")
    @SequenceGenerator(name = "newnotification_gen", sequenceName = "newnotification_seq",
            schema = "communication", allocationSize = 1)
    protected Long id;

    @Column(name = "code")
    private String code;

    @Column(name = "message")
    private String message;

    @Column(name = "seen")
    @Builder.Default
    private Boolean seen = false;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "patient_id")
    private Patient patient;

    @Column(name = "request_appointment_id")
    private Long requestAppointmentId;

    @Column(name = "request_care_coverage_id")
    private Long requestCareCoverageId;

    @Enumerated(EnumType.STRING)
    @Column(name = "type", nullable = false)
    private NotificationType type;

    @Column(name = "creation_date", updatable = false)
    private LocalDateTime creationDate;

    @PrePersist
    public void prePersist() {
        this.creationDate = LocalDateTime.now();
    }
}