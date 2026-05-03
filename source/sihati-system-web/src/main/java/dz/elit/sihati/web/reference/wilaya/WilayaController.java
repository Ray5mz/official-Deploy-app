package dz.elit.sihati.web.reference.wilaya;

import dz.elit.sihati.application.reference.wilaya.queries.getwilaya.GetWilayaUseCase;
import dz.elit.sihati.application.reference.wilaya.queries.getwilaya.GetWilayaDtoResponse;
import dz.elit.sihati.application.reference.wilaya.queries.getwilayalist.GetWilayaListUseCase;
import dz.elit.sihati.application.reference.wilaya.queries.getwilayalist.GetWilayaListDtoResponse;
import dz.elit.sihati.commons.WebAdapter;
import dz.elit.sihati.web.commons.controller.BaseController;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;

import java.util.List;

@WebAdapter
@RequiredArgsConstructor
class WilayaController extends BaseController implements WilayaResource {

    private final GetWilayaUseCase getWilayaUseCase;
    private final GetWilayaListUseCase getWilayaListUseCase;

    @Override
    public GetWilayaDtoResponse getWilaya(String code) {
        return getWilayaUseCase.execute(code);
    }

    @Override
    public List<GetWilayaListDtoResponse> getWilayaList(HttpServletRequest httpServletRequest) {
        return getWilayaListUseCase.execute();
    }
}