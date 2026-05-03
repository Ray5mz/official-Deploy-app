package dz.elit.sihati.persistence.NewNotification;

import dz.elit.sihati.domain.communication.NewNotification;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;

public interface NewNotificationRepository extends JpaRepository<NewNotification, Long> {
    Optional<NewNotification> findByCode(String code);

    @Query("""
    SELECT n.code FROM NewNotification n
    WHERE n.code LIKE 'NOTIF-%'
    ORDER BY CAST(SUBSTRING(n.code, 7) AS int) DESC
""")
    List<String> getMaxNotificationCode(org.springframework.data.domain.Pageable pageable);

    @Query("SELECT n FROM NewNotification n WHERE n.patient.code = :patientCode")
    List<NewNotification> findNotificationsByPatientCode(@Param("patientCode") String patientCode);

    @Query("""
    SELECT n FROM NewNotification n
    WHERE n.patient.code = :patientCode
    ORDER BY n.creationDate DESC, n.id DESC
""")
    List<NewNotification> findLatestNotificationByPatientCode(
            @Param("patientCode") String patientCode,
            org.springframework.data.domain.Pageable pageable
    );

}
