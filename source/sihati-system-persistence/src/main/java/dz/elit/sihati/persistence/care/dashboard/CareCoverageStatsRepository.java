package dz.elit.sihati.persistence.care.dashboard;

import dz.elit.sihati.domain.care.RequestCareCoverage;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface CareCoverageStatsRepository extends JpaRepository<RequestCareCoverage, Long> {

    @Query(value = "SELECT COUNT(*) FROM care.request_care_coverages c " +
            "JOIN reference.patient p ON p.id = c.patient_id " +
            "WHERE p.code = :patientCode", nativeQuery = true)
    long countByPatientCode(@Param("patientCode") String patientCode);

    @Query(value = "SELECT COUNT(*) FROM care.request_care_coverages c " +
            "JOIN reference.patient p ON p.id = c.patient_id " +
            "WHERE p.code = :patientCode AND c.status = :status", nativeQuery = true)
    long countByPatientCodeAndStatus(@Param("patientCode") String patientCode, @Param("status") String status);
}