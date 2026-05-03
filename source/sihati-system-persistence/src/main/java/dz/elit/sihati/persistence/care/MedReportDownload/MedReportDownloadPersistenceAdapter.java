package dz.elit.sihati.persistence.care.MedReportDownload;

import dz.elit.sihati.application.care.MedReportDownload.MedReportDownloadDtoResponse;
import dz.elit.sihati.application.care.MedReportDownload.MedReportDownloadLoad;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
@RequiredArgsConstructor
public class MedReportDownloadPersistenceAdapter implements MedReportDownloadLoad {

    private final MedReportDownloadRepository repository;

    @Override
    public List<MedReportDownloadDtoResponse> getMedReportsForPatient(String patientCode) {
        return repository.findByPatientCode(patientCode);
    }

    @Override
    public byte[] findMedicalReportByPatientCode(String patientCode) {
        return repository.findDocumentByPatientCode(patientCode);
    }

    @Override
    public byte[] findByReportNumber(String reportNumber) {
        return repository.findDocumentByReportNumber(reportNumber);
    }
}