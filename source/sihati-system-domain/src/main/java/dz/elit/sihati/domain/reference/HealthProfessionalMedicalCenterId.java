package dz.elit.sihati.domain.reference;

import jakarta.persistence.Basic;
import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.SuperBuilder;

import java.io.Serializable;

@Embeddable
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@SuperBuilder

public class HealthProfessionalMedicalCenterId implements Serializable {
    @Basic(optional = false)
    @Column(name = "health_professional_id")
    private Long healthProfessionalId;

    @Basic(optional = false)
    @Column(name = "medical_center_id")
    private Long medicalCenterId;

    @Column(name = "day_of_week", nullable = false, length = 20)
    private String dayOfWeek;

    @Column(name = "period_of_day", nullable = false, length = 20)
    private String periodOfDay;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof HealthProfessionalMedicalCenterId)) return false;
        HealthProfessionalMedicalCenterId that = (HealthProfessionalMedicalCenterId) o;
        return java.util.Objects.equals(healthProfessionalId, that.healthProfessionalId)
                && java.util.Objects.equals(medicalCenterId, that.medicalCenterId)
                && java.util.Objects.equals(dayOfWeek, that.dayOfWeek)
                && java.util.Objects.equals(periodOfDay, that.periodOfDay);
    }

    @Override
    public int hashCode() {
        return java.util.Objects.hash(
                healthProfessionalId,
                medicalCenterId,
                dayOfWeek,
                periodOfDay
        );
    }
}
