package dz.elit.sihati.persistence.care.pathologie;

import dz.elit.sihati.domain.care.Pathologie;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface GetPathologieRepository extends JpaRepository<Pathologie, Long> {



        @Query("SELECT p FROM Pathologie p WHERE p.patient.code = :code")
        List<Pathologie> findByPatientCode(@Param("code") String code);


}