package dz.elit.sihati.application.admin.organisationalstructure.queries.getorgstructurelist;

import dz.elit.sihati.domain.admin.OrganisationalStructure;
import dz.elit.sihati.domain.admin.StructureType;

import java.util.List;
import java.util.Optional;

public interface GetOrgStructureListLoad {
    List<OrganisationalStructure> getOrgStructureList(Optional<StructureType> unittype);
}
