package dz.elit.sihati.persistence.reference.commune;

import dz.elit.sihati.domain.reference.Commune;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;
import java.util.Optional;

public interface CommuneRepository extends JpaRepository<Commune,Long> {

    List<Commune> findAll();
    Optional<Commune> findByCode(String code);
    @Query(value = "select c from  Commune c  where c.code IN :codes ")
    List<Commune> findCommunesByCode(List<String> codes);
}
