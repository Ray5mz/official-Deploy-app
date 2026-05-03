package dz.elit.sihati.application.care.requestcarecoverage.commands.cancelrequestcarecoverage;

import dz.elit.sihati.domain.care.RequestCareCoverage;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface CancelRequestCareCoverageMapper {

    CancelRequestCareCoverageDtoResponse toDto(RequestCareCoverage requestCareCoverage);

}