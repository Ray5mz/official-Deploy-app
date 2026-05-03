package dz.elit.sihati.persistence.reference.commune;

import dz.elit.sihati.application.reference.commune.queries.getcommunelist.LoadCommuneList;
import dz.elit.sihati.domain.reference.Commune;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class CommunePersistenceAdapter implements LoadCommuneList {

    private final CommuneRepository communeRepository;

    @Override
    public List<Commune> getCommuneList() {
        return communeRepository.findAll();
    }

    public List<Commune> findCommunes(List<String> code) {
        return communeRepository.findCommunesByCode(code);
    }

    public Commune getCommune(String code) {
        return communeRepository.findByCode(code).orElse(null);
    }
}