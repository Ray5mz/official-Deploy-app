package dz.elit.sihati.application.care.requestcarecoverage.commands.createrequestcarecoverage;

import dz.elit.sihati.domain.care.RequestCareCoverage;
import org.mapstruct.Mapper;


@Mapper(componentModel = "spring")
public interface CreateRequestCareCoverageMapper {



  RequestCareCoverage createRequestCareCoveragesDtoToRequestCareCoverages(CreateRequestCareCoverageDto createRequestCareCoveragesDto);
  CreateRequestCareCoverageDtoResponse requestCareCoverageToCreateRequestCareCoverageDtoResponse(RequestCareCoverage requestCareCoverage);

}
