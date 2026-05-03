package dz.elit.sihati.infrastructure.jasper.config.jasperreports;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.boot.context.properties.ConfigurationProperties;


@ConfigurationProperties(prefix = "jasperreports.pdf.export")

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PdfExportConfig {

    private String metadataAuthor;
    private Boolean reportEncrypted;
    private String allowedPermissionsHint;
    private Boolean reportCompressed;
}
