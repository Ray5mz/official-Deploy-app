package dz.elit.sihati.application.admin.organisationalstructure.queries.getorgstructurebyparentalllist;

import dz.elit.sihati.domain.admin.OrganisationalStructure;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
class GetOrgStructureAllListService implements GetOrgStructureAllListUseCase {

    private final GetOrgStructureAllListLoad getOrgStructureListLoad;
    private final GetOrgStructureAllListMapper getOrgStructureListMapper;

    @Override
    public List<GetOrgStructureAllListDtoResponse> execute() {
        List<OrganisationalStructure> units = getOrgStructureListLoad.getOrgStructureList();

        return getOrgStructureListMapper.unitsToGetOrgStructureListDto(units);
    }
}
