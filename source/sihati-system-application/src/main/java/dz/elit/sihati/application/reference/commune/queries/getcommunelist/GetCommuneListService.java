package dz.elit.sihati.application.reference.commune.queries.getcommunelist;

import dz.elit.sihati.domain.reference.Commune;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class GetCommuneListService implements GetCommuneListUseCase {

    private final LoadCommuneList loadCommuneList;
    private final GetCommuneListMapper getCommuneListMapper;

    @Override
    public List<GetCommuneListDtoResponse> execute() {
       List<Commune> communeList = loadCommuneList.getCommuneList();
        List<GetCommuneListDtoResponse> getCommuneListDtoResponse = getCommuneListMapper.communeToCommuneDto(communeList);
       return getCommuneListDtoResponse;
    }
}
