package dz.elit.sihati.application.admin.organisationalstructure.queries.getorgstructure;

import dz.elit.sihati.domain.admin.OrganisationalStructure;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
class GetOrgStructureService implements GetOrgStructureUseCase {

    private final GetOrgStructureLoad getOrgStructureLoad;
    private final GetOrgStructureMapper getOrgStructureMapper;

    @Override
    public GetOrgStructureDtoResponse execute(String code) {
        OrganisationalStructure unit = getOrgStructureLoad.getUnit(code);

        return getOrgStructureMapper.unitToGetOrgStructureDto(unit);
    }
}
