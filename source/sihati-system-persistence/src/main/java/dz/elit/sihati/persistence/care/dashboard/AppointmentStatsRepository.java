package dz.elit.sihati.persistence.care.dashboard;

import dz.elit.sihati.domain.care.RequestAppointment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface AppointmentStatsRepository extends JpaRepository<RequestAppointment, Long> {

    @Query(value = "SELECT COUNT(*) FROM care.request_appointment a " +
            "JOIN reference.patient p ON p.id = a.patient_id " +
            "WHERE p.code = :patientCode", nativeQuery = true)
    long countByPatientCode(@Param("patientCode") String patientCode);

    @Query(value = "SELECT COUNT(*) FROM care.request_appointment a " +
            "JOIN reference.patient p ON p.id = a.patient_id " +
            "WHERE p.code = :patientCode AND a.status = :status", nativeQuery = true)
    long countByPatientCodeAndStatus(@Param("patientCode") String patientCode, @Param("status") String status);
}