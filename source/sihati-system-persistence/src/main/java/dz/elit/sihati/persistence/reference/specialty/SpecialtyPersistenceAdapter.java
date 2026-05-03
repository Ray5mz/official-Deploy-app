package dz.elit.sihati.persistence.reference.specialty;

import dz.elit.sihati.application.reference.specialty.GetSpecialtyLoad;
import dz.elit.sihati.domain.reference.Specialty;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
@RequiredArgsConstructor
public class SpecialtyPersistenceAdapter implements GetSpecialtyLoad {
    private final SpecialtyRepository specialtyRepository;

    @Override
    public List<Specialty> loadAll() {
        return specialtyRepository.findAll();
    }

}
