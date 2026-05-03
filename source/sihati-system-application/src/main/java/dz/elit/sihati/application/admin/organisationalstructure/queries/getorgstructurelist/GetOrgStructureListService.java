package dz.elit.sihati.application.admin.organisationalstructure.queries.getorgstructurelist;

import dz.elit.sihati.domain.admin.OrganisationalStructure;
import dz.elit.sihati.domain.admin.StructureType;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
class GetOrgStructureListService implements GetOrgStructureListUseCase {

    private final GetOrgStructureListLoad getOrgStructureListLoad;
    private final GetOrgStructureListMapper getOrgStructureListMapper;

    @Override
    public List<GetOrgStructureListDtoResponse> execute(Optional<StructureType> unittype) {
        List<OrganisationalStructure> units = getOrgStructureListLoad.getOrgStructureList( unittype);

        return getOrgStructureListMapper.unitsToGetOrglStructureListDto(units);
    }
}
