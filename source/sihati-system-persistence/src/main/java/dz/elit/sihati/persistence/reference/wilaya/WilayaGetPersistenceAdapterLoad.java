package dz.elit.sihati.persistence.reference.wilaya;

import dz.elit.sihati.application.reference.wilaya.queries.getwilaya.GetWilayaLoad;
import dz.elit.sihati.application.reference.wilaya.queries.getwilayalist.GetWilayaListLoad;
import dz.elit.sihati.domain.reference.Wilaya;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
@RequiredArgsConstructor
public class WilayaGetPersistenceAdapterLoad implements GetWilayaListLoad, GetWilayaLoad {

    private final WilayaRepository wilayaRepository;

    @Override
    public Wilaya getWilaya(String code) {
        return wilayaRepository.findByCode(code).orElse(null);
    }

    @Override
    public List<Wilaya> getWilayaList() {
        return wilayaRepository.findAll();
    }
}