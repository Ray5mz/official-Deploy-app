package dz.elit.sihati.persistence.reference.specialty;

import dz.elit.sihati.domain.reference.Specialty;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface SpecialtyRepository extends JpaRepository<Specialty, Long> {
    Optional<Specialty> findByCode(String code);
}
