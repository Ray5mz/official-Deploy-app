package dz.elit.sihati.domain.care;

import dz.elit.sihati.domain.care.enumeration.Severite;
import dz.elit.sihati.domain.reference.Patient;
import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDateTime;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(name = "pathologies", schema = "care")
public class Pathologie {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "nom", nullable = false, length = 255)
    private String nom;

    @Enumerated(EnumType.STRING)
    @Column(name = "severite", length = 50)
    private Severite severite;

    @Column(name = "created_at", updatable = false)
    private LocalDateTime createdAt;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "patient_id", nullable = false)
    private Patient patient;

    @PrePersist
    protected void onCreate() {
        this.createdAt = LocalDateTime.now();
    }

}