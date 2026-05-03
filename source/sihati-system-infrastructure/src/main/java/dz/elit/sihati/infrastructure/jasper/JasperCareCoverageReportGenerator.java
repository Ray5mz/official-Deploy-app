package dz.elit.sihati.infrastructure.jasper;

import dz.elit.sihati.application.care.requestcarecoverage.queries.downloadcarecoverage.CareCoverageReportGenerator;
import dz.elit.sihati.domain.care.RequestCareCoverage;
import dz.elit.sihati.infrastructure.enumration.ReportExportType;
import dz.elit.sihati.infrastructure.jasper.utils.processor.DynamicOutputProcessorService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import net.sf.jasperreports.engine.*;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Component;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.Map;

@Slf4j
@Component
@RequiredArgsConstructor
public class JasperCareCoverageReportGenerator implements CareCoverageReportGenerator {

    private final DynamicOutputProcessorService dynamicOutputProcessorService;

    @Override
    public byte[] generate(RequestCareCoverage coverage) {
        try {
            InputStream reportStream = new ClassPathResource("reports/care_coverage.jrxml")
                    .getInputStream();
            JasperReport jasperReport = JasperCompileManager.compileReport(reportStream);

            Map<String, Object> parameters = new HashMap<>();
            parameters.put("coverageId", coverage.getId().toString());
            parameters.put("logoPath", getClass().getResource("/reports/logo.png").toString());
            parameters.put("patientLastName", coverage.getPatient().getLastName());
            parameters.put("patientFirstName", coverage.getPatient().getFirstName());
            parameters.put("status", coverage.getStatus().toString());
            parameters.put("demandeDate", coverage.getDemandeDate() != null ? coverage.getDemandeDate().toString() : "");
            parameters.put("startDate", coverage.getStartDate() != null ? coverage.getStartDate().toString() : "");
            parameters.put("endDate", coverage.getEndDate() != null ? coverage.getEndDate().toString() : "N/A");
            parameters.put("hasCancer", coverage.isHasCancer() ? "Oui" : "Non");  // isHasCancer() not getHasCancer()
            parameters.put("notes", coverage.getNotes() != null ? coverage.getNotes() : "");
            parameters.put("currentDate", LocalDate.now().format(DateTimeFormatter.ofPattern("dd/MM/yyyy")));
            JasperPrint jasperPrint = JasperFillManager.fillReport(
                    jasperReport, parameters, new JREmptyDataSource()
            );

            ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
            dynamicOutputProcessorService.export(ReportExportType.PDF, jasperPrint, outputStream);
            return outputStream.toByteArray();

        } catch (Exception e) {
            log.error("Failed to generate care coverage PDF", e);
            throw new RuntimeException("Failed to generate care coverage PDF", e);
        }
    }
}