package dz.elit.sihati.persistence.care.dashboard;

import dz.elit.sihati.domain.care.ConstanteVitale;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ConstanteVitaleStatsRepository extends JpaRepository<ConstanteVitale, Long> {

    @Query("SELECT c.constanteVitale FROM Consultation c " +
            "WHERE c.patient.code = :patientCode " +
            "AND c.constanteVitale IS NOT NULL " +
            "ORDER BY c.constanteVitale.saveDate DESC")
    List<ConstanteVitale> findByPatientCodeOrderByDateDesc(@Param("patientCode") String patientCode);
}