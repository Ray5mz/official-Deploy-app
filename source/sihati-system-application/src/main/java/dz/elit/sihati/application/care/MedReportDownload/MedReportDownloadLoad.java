package dz.elit.sihati.application.care.MedReportDownload;

import java.util.List;

public interface MedReportDownloadLoad {
    byte[] findMedicalReportByPatientCode(String patientCode);
    byte[] findByReportNumber(String reportNumber);
    List<MedReportDownloadDtoResponse> getMedReportsForPatient(String patientCode);
}