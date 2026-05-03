package dz.elit.sihati.persistence.care.consultation;


import dz.elit.sihati.domain.care.ConstanteVitale;
import dz.elit.sihati.domain.care.Consultation;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

public interface
ConsultationRepository extends JpaRepository<Consultation, Long> {


    @Transactional
    long deleteConsultationByConsultationNumberIn(List<String> codes);

    Optional<Consultation> findConsultationByConsultationNumber(String codeconsultation);


    @Query(value = "select m from  Consultation m ")
    List<Consultation> findconsultations();


    @Query(value = "select max(m.consultationNumber) from  Consultation m   ")
    Optional<String> getMaxConsultationNumber();

    @Query("SELECT c FROM Consultation c WHERE c.patient.code = :patientCode")
    List<Consultation> findConsultationsByPatientCode(@Param("patientCode") String patientCode);

    @Query("""
SELECT c.constanteVitale
FROM Consultation c
WHERE c.patient.code = :patientCode
AND c.constanteVitale IS NOT NULL
""")
    List<ConstanteVitale> findConstanteVitaleByPatientCode(@Param("patientCode") String patientCode);
    @Query("""
SELECT c
FROM Consultation c
WHERE c.patient.code = :patientCode
AND c.constanteVitale IS NOT NULL
ORDER BY c.consultationDate DESC
""")
    List<Consultation> findLastConsultationWithConstante(@Param("patientCode") String patientCode);

    @Query("""
SELECT c.constanteVitale 
FROM Consultation c 
WHERE c.patient.code = :patientCode 
AND c.constanteVitale IS NOT NULL 
ORDER BY c.constanteVitale.saveDate DESC
""")
    List<ConstanteVitale> findLastConstanteVitale(@Param("patientCode") String patientCode);


    @Query("""
SELECT c.constanteVitale 
FROM Consultation c 
WHERE c.patient.code = :patientCode 
AND c.constanteVitale IS NOT NULL 
ORDER BY c.constanteVitale.saveDate ASC
""")
    List<ConstanteVitale> findAllConstanteVitaleHistory(@Param("patientCode") String patientCode);
    @Query("SELECT c FROM Consultation c WHERE c.patient.code = :patientCode ORDER BY c.consultationDate DESC")
    List<Consultation> findLastConsultationByPatientCode(@Param("patientCode") String patientCode, Pageable pageable);
}