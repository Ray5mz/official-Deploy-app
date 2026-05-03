package dz.elit.sihati.domain.care;

import dz.elit.sihati.domain.commons.Auditing;
import jakarta.persistence.*;
import lombok.*;

import java.io.Serializable;
import java.math.BigDecimal;

@Getter
@Setter
@Entity
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(name = "medical_doc", schema = "care")
public class MedicalDoc extends Auditing implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "medical_doc_gen")
    @SequenceGenerator(name = "medical_doc_gen", sequenceName = "medical_doc_seq", schema = "care", allocationSize = 1)
    @Column(name = "id", nullable = false)
    private Long id;

    @Column(name = "code")
    private String code;

    @Column(name = "extension")
    private String extension;

    @Column(name = "libelle")
    private String libelle;

    @Column(name = "path")
    private String path;

    @Column(name = "path_pere")
    private String pathPere;

    @Column(name = "mime_type")
    private String mimeType;

    @Column(name = "size")
    private BigDecimal size;

    @Column(name = "version")
    private Integer version;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_request_care_coverege")
    private RequestCareCoverage requestCareCoverage;
}