package dz.elit.sihati.persistence.care.MedReportDownload;

import dz.elit.sihati.application.care.MedReportDownload.MedReportDownloadDtoResponse;
import dz.elit.sihati.domain.care.MedicalReport;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface MedReportDownloadRepository extends JpaRepository<MedicalReport, Long> {

    @Query(value = """
        SELECT mr.document_pdf
        FROM care.medical_report mr
        JOIN care.consultation c ON c.id = mr.consultation_id
        JOIN reference.patient p ON p.id = c.patient_id
        WHERE p.code = :patientCode
        ORDER BY mr.id DESC
        LIMIT 1
        """, nativeQuery = true)
    byte[] findDocumentByPatientCode(@Param("patientCode") String patientCode);

    @Query(value = """
        SELECT mr.document_pdf
        FROM care.medical_report mr
        WHERE mr.medical_report_number = :reportNumber
        """, nativeQuery = true)
    byte[] findDocumentByReportNumber(@Param("reportNumber") String reportNumber);

    @Query("""
        SELECT new dz.elit.sihati.application.care.MedReportDownload.MedReportDownloadDtoResponse(
            mr.medicalReportNumber,
            mr.certificateType,
            mr.certificateSubType,
            mr.description,
            mr.status,
            p.code,
            mr.fileName
        )
        FROM MedicalReport mr
        JOIN mr.consultation c
        JOIN c.patient p
        WHERE p.code = :patientCode
        ORDER BY mr.id DESC
    """)
    List<MedReportDownloadDtoResponse> findByPatientCode(@Param("patientCode") String patientCode);
}