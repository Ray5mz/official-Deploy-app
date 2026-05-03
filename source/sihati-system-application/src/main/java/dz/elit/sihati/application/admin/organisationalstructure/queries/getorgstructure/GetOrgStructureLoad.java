package dz.elit.sihati.application.admin.organisationalstructure.queries.getorgstructure;

import dz.elit.sihati.domain.admin.OrganisationalStructure;

public interface GetOrgStructureLoad {
    OrganisationalStructure getUnit(String code);
}
