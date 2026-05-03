package dz.elit.sihati.persistence.care.requestappointment;

import dz.elit.sihati.domain.care.RequestAppointment;
import dz.elit.sihati.domain.care.enumeration.RequestAppointmentStatus;
import jakarta.transaction.Transactional;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

public interface RequestAppointmentRepository extends JpaRepository<RequestAppointment, Long> {
  @Transactional
  Optional<RequestAppointment> findRequestAppointmentByAppointmentNumber(String codeAppointment);

  @Query(value = "select max(m.appointmentNumber) from  RequestAppointment m where m.appointmentNumber ilike  :appointmentNumberLike   ")
  Optional<String> getMaxAppointmentNumber(@Param("appointmentNumberLike") String appointmentNumberLike);


  @Query("SELECT ra FROM RequestAppointment ra WHERE ra.patient.code = :patientCode")
  List<RequestAppointment> findRequestAppointmentByPatientCode(@Param("patientCode") String patientCode);



  @Query("SELECT ra FROM RequestAppointment ra WHERE ra.patient.code = :patientCode AND ra.status = :status AND ra.appointmentDate > :currentDate ORDER BY ra.appointmentDate ASC")
  List<RequestAppointment> findNearestAcceptedFutureAppointmentByPatientCode(
          @Param("patientCode") String patientCode,
          @Param("status") RequestAppointmentStatus status,
          @Param("currentDate") LocalDateTime currentDate,
          Pageable pageable);
}



