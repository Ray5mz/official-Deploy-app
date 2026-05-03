package dz.elit.sihati.persistence.admin.organisationalstructure;

import dz.elit.sihati.application.admin.organisationalstructure.queries.getorgstructure.GetOrgStructureLoad;
import dz.elit.sihati.application.admin.organisationalstructure.queries.getorgstructurebyparentalllist.GetOrgStructureAllListLoad;
import dz.elit.sihati.application.admin.organisationalstructure.queries.getorgstructurebyparentlist.GetOrgStructureByParentList;
import dz.elit.sihati.application.admin.organisationalstructure.queries.getorgstructurelist.GetOrgStructureListLoad;
import dz.elit.sihati.application.care.requestcarecoverage.commands.createrequestcarecoverage.CreateRequestCareCoveragesLoadMedicalCenter;
import dz.elit.sihati.commons.PersistenceAdapter;
import dz.elit.sihati.domain.admin.OrganisationalStructure;
import dz.elit.sihati.domain.admin.StructureType;
import dz.elit.sihati.domain.exceptions.ResourceNotFoundException;
import lombok.RequiredArgsConstructor;

import java.util.List;
import java.util.Optional;

@PersistenceAdapter
@RequiredArgsConstructor
class OrganisationalStructurePersistenceAdapter implements
        GetOrgStructureAllListLoad,
        GetOrgStructureLoad,
        GetOrgStructureByParentList,
        GetOrgStructureListLoad,
        CreateRequestCareCoveragesLoadMedicalCenter {

    private final OrganisationalStructureRepository organisationalstructureRepository;

    // GetOrgStructureAllListLoad
    @Override
    public List<OrganisationalStructure> getOrgStructureList() {
        return getOrgStructureList(Optional.empty());
    }

    // GetOrgStructureLoad
    @Override
    public OrganisationalStructure getUnit(String code) {
        return organisationalstructureRepository.findByCode(code)
                .orElseThrow(() -> new ResourceNotFoundException(
                        String.format("No organisationalstructure found with code '%s'.", code)));
    }

    // GetOrgStructureByParentList
    @Override
    public List<OrganisationalStructure> getOrgStructureByParents(String parent) {
        if (parent.equalsIgnoreCase("NULL"))
            return organisationalstructureRepository.loadAllOrganisationalStructuresNOParent();
        else
            return organisationalstructureRepository.loadAllOrganisationalStructuresByParent(parent);
    }

    // GetOrgStructureListLoad
    @Override
    public List<OrganisationalStructure> getOrgStructureList(Optional<StructureType> unittype) {
        StructureType unittypestr = null;
        if (unittype.isPresent()) unittypestr = unittype.get();
        return organisationalstructureRepository.loadAllOrganisationalStructures(unittypestr);
    }

    // CreateRequestCareCoveragesLoadMedicalCenter
    @Override
    public Optional<OrganisationalStructure> findOrganisationalStructureByCode(String code) {
        return organisationalstructureRepository.findOrganisationalStructureByCode(code);
    }
}