package dz.elit.sihati.persistence.reference.wilaya;

import dz.elit.sihati.domain.reference.Wilaya;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;
import java.util.Set;

public interface WilayaRepository extends JpaRepository<Wilaya, Long> {

    Optional<Wilaya> findByCode(String code);

    @Query(value = "select w from  Wilaya w  where w.code =:code ")
    Wilaya findwilayaByCode(String code);

    @Query(value = "select w from  Wilaya w  where w.code IN :codes ")
    Set<Wilaya> findWilayasByCodes(@Param("codes") List<String> codes);




    boolean existsByCode(String code);


}
