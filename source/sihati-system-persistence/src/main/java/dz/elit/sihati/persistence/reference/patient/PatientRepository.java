package dz.elit.sihati.persistence.reference.patient;

import dz.elit.sihati.domain.reference.Patient;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

public interface PatientRepository extends JpaRepository<Patient, Long> {


    @Query(value = "SELECT id FROM reference.patient WHERE code = :code LIMIT 1", nativeQuery = true)
    Optional<Long> findPatientIdByCode(@Param("code") String code);

    @Query(value = "select r from  Patient r   order by r.code")
    List<Patient> loadPatient();

    @Query(value = "select r from  Patient r where r.employee.code = :employeeCode   order by r.code")
    List<Patient> loadPatient(@Param("employeeCode") String employeeCode);


    @Query(value = "select r from  Patient r  where   r.code = :code order by r.code")
    Optional<Patient> findPatientByCode( @Param("code") String code);

    @Transactional
    @Modifying
    @Query(value = "DELETE from Patient r   where   r.code = :code ")
    void deletePatient( @Param("code") String code);


    @Query(value = "select max(m.code) from  Patient m where m.employee.code = :employeeCode  ")
    Optional<String> getMaxCode(@Param("employeeCode") String employeeCode);


    @Query("SELECT MAX(SUBSTRING(m.code, 1, 7)) FROM Patient m WHERE m.code like :codeLike")
    Optional<String> getMaxCodeExt(@Param("codeLike") String codeLike);


    Page<Patient> findAll(Specification<Patient> spec, Pageable pageable);

    @Transactional
    @Modifying
    @Query(value = "update Patient r  set r.enabled=false where   r.code = :code ")
   void  deletePatientUpdateStatus(@Param("code") String code);
}
