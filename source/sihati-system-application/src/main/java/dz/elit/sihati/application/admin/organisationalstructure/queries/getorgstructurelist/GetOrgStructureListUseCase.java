package dz.elit.sihati.application.admin.organisationalstructure.queries.getorgstructurelist;

import dz.elit.sihati.domain.admin.StructureType;

import java.util.List;
import java.util.Optional;

public interface GetOrgStructureListUseCase {
    List<GetOrgStructureListDtoResponse> execute(Optional<StructureType> unittype);
}