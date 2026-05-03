package dz.elit.sihati.persistence.care.medicaldoc;

import dz.elit.sihati.domain.care.MedicalDoc;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MedicalDocRepository extends JpaRepository<MedicalDoc, Long> {
    List<MedicalDoc> findByRequestCareCoverage_Code(String careCoverageCode);
}