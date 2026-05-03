package dz.elit.sihati.persistence.care.timingdoctor;

import dz.elit.sihati.domain.care.TimingDoctor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;

public interface TimingDoctorRepository extends JpaRepository<TimingDoctor, Long> {

    @Query("SELECT t FROM TimingDoctor t WHERE t.specialty.code = :code")
    List<TimingDoctor> findBySpecialtyCode(@Param("code") String code);

    Optional<TimingDoctor> findTimingDoctorByCode(String code);
    @Query("SELECT t FROM TimingDoctor t WHERE t.healthProfessional.id = :id")
    List<TimingDoctor> findByHealthProfessionalId(@Param("id") Long id);

    @Modifying
    @Query(value = "UPDATE care.timing_doctor SET status = CAST(:status AS care.timing_status_enum) WHERE id = :id", nativeQuery = true)
    void updateStatus(@Param("id") Long id, @Param("status") String status);

}