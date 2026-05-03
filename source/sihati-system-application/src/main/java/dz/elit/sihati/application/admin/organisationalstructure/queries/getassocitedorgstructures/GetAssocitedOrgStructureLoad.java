package dz.elit.sihati.application.admin.organisationalstructure.queries.getassocitedorgstructures;


import java.util.List;

public interface GetAssocitedOrgStructureLoad {
    public List<String> findChildsOrganisationalStructureCode(String codeUnit);
}
