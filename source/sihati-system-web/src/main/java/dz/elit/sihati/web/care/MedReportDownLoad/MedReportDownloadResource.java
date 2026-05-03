package dz.elit.sihati.web.care.MedReportDownLoad;

import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;

public interface MedReportDownloadResource {
    default ResponseEntity<byte[]> download(byte[] document) {
        if (document == null || document.length == 0) {
            return ResponseEntity.notFound().build();
        }
        return ResponseEntity.ok()
                .header(HttpHeaders.CONTENT_DISPOSITION, "inline; filename=medical-report.pdf")
                .contentType(MediaType.APPLICATION_PDF)
                .contentLength(document.length)
                .body(document);
    }
}
