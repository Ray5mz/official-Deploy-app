package dz.elit.sihati.persistence.care.requestcarecoverage;


import dz.elit.sihati.domain.care.RequestCareCoverage;
import io.lettuce.core.dynamic.annotation.Param;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

public interface RequestCareCoverageRepository extends JpaRepository<RequestCareCoverage, Long> {


  @Query(value = "select max(m.code) from  RequestCareCoverage m where m.code ilike  :codeLike   ")
  Optional<String> getMaxRequestCareCoveragesNumber(@Param("codeLike") String codeLike);

  @Transactional
  Optional<RequestCareCoverage> findRequestCareCoverageByCode(String code);

  @Query("SELECT r FROM RequestCareCoverage r WHERE r.patient.id = :patientId")
  List<RequestCareCoverage> findByPatientId(@Param("patientId") Long patientId);

  Optional<RequestCareCoverage> findByCode(String code);
}
