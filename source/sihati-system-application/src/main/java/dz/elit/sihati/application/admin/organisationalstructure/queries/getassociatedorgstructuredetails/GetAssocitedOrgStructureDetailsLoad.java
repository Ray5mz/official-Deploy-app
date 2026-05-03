package dz.elit.sihati.application.admin.organisationalstructure.queries.getassociatedorgstructuredetails;


import java.util.List;

public interface GetAssocitedOrgStructureDetailsLoad {
    public List<String> findChildsOrganisationalStructureCodeDesignation(String codeUnit);
}
