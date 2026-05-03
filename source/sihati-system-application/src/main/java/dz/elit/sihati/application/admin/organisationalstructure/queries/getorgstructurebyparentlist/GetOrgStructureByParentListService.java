package dz.elit.sihati.application.admin.organisationalstructure.queries.getorgstructurebyparentlist;

import dz.elit.sihati.domain.admin.OrganisationalStructure;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class GetOrgStructureByParentListService implements GetOrgStructureByParentListUseCase {
    private final GetOrgStructureByParentList getOrgStructureByParentList;
    private final GetOrgStructureByParentListMapper getOrgStructureByParentListMapper;

    @Override
    public List<GetOrgStructureByParentListDtoResponse> execute(String paretStructure) {
            List<OrganisationalStructure> units = getOrgStructureByParentList.getOrgStructureByParents(paretStructure);

        return getOrgStructureByParentListMapper.unitsToGetOrgStructureByParentList(units);
    }
}
