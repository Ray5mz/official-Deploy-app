package dz.elit.sihati.domain.communication;

import dz.elit.sihati.domain.commons.Auditing;
import dz.elit.sihati.domain.commons.FileExtension;
import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDateTime;

/**
 * @author gueffaf
 * @version 1.0
 * @created 5/21/2018
 */
@Entity
@Table(name = "attached_document", schema = "communication")
@Getter
@Setter
@EqualsAndHashCode(callSuper = false)
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class AttachedDocument extends Auditing {

    @Id
    @Column
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "attached_document_gen")
    @SequenceGenerator(name = "attached_document_gen", sequenceName = "attached_document_seq",
            schema = "communication", allocationSize = 1)
    private Long id;

    @Column(name = "path_to_scanned_document")
    private String pathToScannedDocument;

    @Column(name = "attached_document_type")
    @Enumerated(EnumType.STRING)
    private AttachedDocumentType attachedDocumentType;

    @Column(name = "attachment_entity")
    private String attachmentEntity;

    @Column(name = "attachment_entity_id")
    private String attachmentEntityId;

    @Column(name = "file_extension")
    @Enumerated(EnumType.STRING)
    private FileExtension fileExtension;

    @Column(name = "media_type")
    private String mediaType;

    @Column(name = "upload_date", columnDefinition = "TIMESTAMP")
    private LocalDateTime uploadDate;
}
