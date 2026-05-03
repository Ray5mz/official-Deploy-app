package dz.elit.sihati.application.care.MedReportDownload;

import java.util.List;

public interface MedReportDownloadUseCase {
    byte[] execute(String patientCode);
    byte[] findByReportNumber(String reportNumber);
    List<MedReportDownloadDtoResponse> getMedReportsForPatient(String patientCode);
}