package dz.elit.sihati.domain.care;

import dz.elit.sihati.domain.commons.Auditing;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.ColumnDefault;

import java.io.Serializable;

@Getter
@Setter
@Entity
@Table(name = "medical_report", schema = "care")
public class MedicalReport extends Auditing implements Serializable {

    @Id
    @Column(name = "id", nullable = false)
    private Long id;

    @Column(name = "medical_report_number", nullable = false, length = 50)
    private String medicalReportNumber;

    @Column(name = "certificate_type", length = 100)
    private String certificateType;

    @Column(name = "certificate_sub_type", length = 100)
    private String certificateSubType;

    @Column(name = "notes", length = Integer.MAX_VALUE)
    private String notes;

    @Column(name = "description", length = Integer.MAX_VALUE)
    private String description;

    @Column(name = "status", length = 50)
    private String status;

    @ColumnDefault("true")
    @Column(name = "enabled")
    private Boolean enabled;

    @Column(name = "version")
    private Integer version;

    @Column(name = "file_name", length = 255)
    private String fileName;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "consultation_id")
    private Consultation consultation;

    @Lob
    @Column(name = "document_pdf")
    private byte[] documentPdf;
}