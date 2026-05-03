package dz.elit.sihati.application.care.dashboard;

import dz.elit.sihati.domain.care.RequestAppointment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface DashboardStatsRepository extends JpaRepository<RequestAppointment, Long> {

    // ── Appointments ──────────────────────────────────────────────────────────
    @Query("SELECT COUNT(a) FROM RequestAppointment a WHERE a.patient.code = :patientCode")
    long countAppointmentsByPatientCode(@Param("patientCode") String patientCode);

    @Query("SELECT COUNT(a) FROM RequestAppointment a WHERE a.patient.code = :patientCode AND CAST(a.status AS string) = :status")
    long countAppointmentsByPatientCodeAndStatus(@Param("patientCode") String patientCode, @Param("status") String status);

    // ── Care coverages ────────────────────────────────────────────────────────
    @Query("SELECT COUNT(c) FROM RequestCareCoverage c WHERE c.patient.code = :patientCode")
    long countCareCoveragesByPatientCode(@Param("patientCode") String patientCode);

    @Query("SELECT COUNT(c) FROM RequestCareCoverage c WHERE c.patient.code = :patientCode AND CAST(c.status AS string) = :status")
    long countCareCoveragesByPatientCodeAndStatus(@Param("patientCode") String patientCode, @Param("status") String status);
}