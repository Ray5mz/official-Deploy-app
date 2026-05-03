package dz.elit.sihati.application.admin.organisationalstructure.queries.getassociatedorgstructuredetails;

import java.util.Set;

public interface GetAssocitedOrgStructureDetailsUseCase {
    public Set<String> execute(String code);
}
