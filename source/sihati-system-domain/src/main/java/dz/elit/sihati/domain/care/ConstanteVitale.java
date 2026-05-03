package dz.elit.sihati.domain.care;

import dz.elit.sihati.domain.commons.Auditing;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.ColumnDefault;

import java.io.Serializable;
import java.math.BigDecimal;
import java.time.LocalDateTime;

@Getter
@Setter
@Entity
@Table(name = "constante_vitale", schema = "care")
public class ConstanteVitale extends Auditing implements Serializable {
    @Id
    @ColumnDefault("nextval('care.constante_vitale_seq')")
    @Column(name = "id", nullable = false)
    private Long id;

    @Column(name = "constante_vitale_number")
    private String constantevitaleNumber;

    @Column(name = "weight")
    private BigDecimal weight;

    @Column(name = "glycemie")
    private BigDecimal glycemie;

    @Column(name = "blod_pressure")
    private BigDecimal blodPressure;

    @Column(name = "height")
    private BigDecimal height;

    @Column(name = "save_date")
    private LocalDateTime saveDate;

    @ColumnDefault("true")
    @Column(name = "enabled")
    private Boolean enabled;


}
