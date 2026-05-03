package dz.elit.sihati.application.admin.organisationalstructure.queries.getorgstructurebyparentalllist;

import java.util.List;

public interface GetOrgStructureAllListUseCase {
    List<GetOrgStructureAllListDtoResponse> execute();
}
