package dz.elit.sihati.application.reference.wilaya.queries.getwilayalist;

import dz.elit.sihati.domain.reference.Wilaya;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
class GetWilayaListService implements GetWilayaListUseCase {

    private final GetWilayaListLoad getWilayaListLoad;
    private final GetWilayaListMapper getWilayaListMapper;

    @Override
    public List<GetWilayaListDtoResponse> execute() {
        List<Wilaya> wilayas = getWilayaListLoad.getWilayaList();

        return getWilayaListMapper.wilayaToWilayaListDto(wilayas);
    }
}
