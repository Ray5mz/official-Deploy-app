package dz.elit.sihati.application.admin.organisationalstructure.queries.getassocitedorgstructures;

import java.util.Set;

public interface GetAssocitedOrgStructureUseCase {
    public Set<String> execute(String code);
}
