package dz.elit.sihati.persistence.reference.AyantDroit;

import dz.elit.sihati.domain.reference.Patient;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;

public interface AyantDroitRepository
        extends JpaRepository<Patient, Long> {
    @Query("""
    SELECT p FROM Patient p
    WHERE p.employee.id = (
        SELECT p2.employee.id
        FROM Patient p2
        WHERE p2.code = :code
        AND p2.internalType = dz.elit.sihati.domain.reference.enumeration.PatientInternalType.AGENT
    )
    AND p.internalType = dz.elit.sihati.domain.reference.enumeration.PatientInternalType.BENEFICIARY
""")
    List<Patient> findByEmployeeNumber(@Param("code") String code);

    @Query("""
SELECT p
FROM Patient p
WHERE p.employee.id = (
    SELECT p2.employee.id
    FROM Patient p2
    WHERE p2.code = :codePatient
)
AND p.internalType = dz.elit.sihati.domain.reference.enumeration.PatientInternalType.AGENT
""")
    Optional<Patient> findAgentByPatientCode(@Param("codePatient") String codePatient);}
