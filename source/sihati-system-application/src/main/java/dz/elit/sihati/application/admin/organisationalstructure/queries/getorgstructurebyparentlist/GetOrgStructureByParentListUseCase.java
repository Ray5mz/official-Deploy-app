package dz.elit.sihati.application.admin.organisationalstructure.queries.getorgstructurebyparentlist;


import java.util.List;

public interface GetOrgStructureByParentListUseCase {

    List<GetOrgStructureByParentListDtoResponse> execute(String parentStructure);
}
