package dz.elit.sihati.persistence.care.pathologie;

import dz.elit.sihati.application.care.pathologie.GetPathologieLoad;
import dz.elit.sihati.application.care.pathologie.GetPathologieMapper;
import dz.elit.sihati.domain.care.Pathologie;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.stream.Collectors;

@Component
@RequiredArgsConstructor
public class GetPathologiePersistanceAdapter implements GetPathologieLoad {

    private final GetPathologieRepository jpaRepository;
    private final GetPathologieMapper mapper;

    @Override
    public List<Pathologie> findByPatientCodePatient(String codePatient) {
        return jpaRepository.findByPatientCode(codePatient)
                .stream()
                .map(mapper::toDomain)
                .collect(Collectors.toList());
    }
}