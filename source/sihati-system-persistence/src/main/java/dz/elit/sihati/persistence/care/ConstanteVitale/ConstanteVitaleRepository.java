package dz.elit.sihati.persistence.care.ConstanteVitale;

import dz.elit.sihati.domain.care.ConstanteVitale;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface ConstanteVitaleRepository extends JpaRepository<ConstanteVitale, Long> {

    Optional<ConstanteVitale> findByConstantevitaleNumber(String constantevitaleNumber);

}