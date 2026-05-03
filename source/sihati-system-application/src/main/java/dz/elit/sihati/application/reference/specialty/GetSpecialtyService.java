package dz.elit.sihati.application.reference.specialty;

import dz.elit.sihati.domain.reference.Specialty;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class GetSpecialtyService implements GetSpecialtyUseCase {
    private final GetSpecialtyLoad specialtyLoad;
    private final GetSpecialtyMapper specialtyMapper;

    @Override
    public List<GetSpecialtyDtoResponse> execute() {
        List<Specialty> specialties = specialtyLoad.loadAll();
        return specialtyMapper.specialtiesToGetSpecialtyDtos(specialties);
    }
}