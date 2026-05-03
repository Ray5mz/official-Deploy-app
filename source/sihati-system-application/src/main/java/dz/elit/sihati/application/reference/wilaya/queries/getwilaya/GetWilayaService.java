package dz.elit.sihati.application.reference.wilaya.queries.getwilaya;

import dz.elit.sihati.domain.reference.Wilaya;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
class GetWilayaService implements GetWilayaUseCase {

    private final GetWilayaLoad loadUnit;
    private final GetWilayaMapper getWilayaMapper;

    @Override
    public GetWilayaDtoResponse execute(String code) {
        Wilaya wilaya = loadUnit.getWilaya(code);

        return getWilayaMapper.wilayaToWilayaDto(wilaya);
    }
}
