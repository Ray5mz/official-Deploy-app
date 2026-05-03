package dz.elit.sihati.persistence.reference.Provider;
import dz.elit.sihati.domain.reference.Provider;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;

public interface ProviderRepository extends JpaRepository<Provider, Long> {


  Optional<Provider> findProviderByCode(String code);


  List<Provider> findByCode(String code);


  @Query("SELECT p FROM Provider p WHERE p.medicalActCategory.code = :categoryCode")
  List<Provider> findByCategoryCode(@Param("categoryCode") String categoryCode);


}
