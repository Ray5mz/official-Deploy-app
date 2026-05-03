package dz.elit.sihati.application.admin.organisationalstructure.queries.getorgstructurebyparentlist;

import dz.elit.sihati.domain.admin.OrganisationalStructure;

import java.util.List;

public interface GetOrgStructureByParentList {
    List<OrganisationalStructure> getOrgStructureByParents(String parent);
}
