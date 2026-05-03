package dz.elit.sihati.application.care.requestcarecoverage.queries.getrequestcarecoverage;

import dz.elit.sihati.domain.care.RequestCareCoverage;
import org.mapstruct.Mapper;

import java.util.List;
@Mapper(componentModel = "spring")
public interface GetRequestCareCoverageMapper {

    GetRequestCareCoverageDtoResponse requestCareCoverageToGetRequestCareCoverageDto(
            RequestCareCoverage requestCareCoverage
    );
    GetRequestCareCoverageByPatientDtoResponse toDto(RequestCareCoverage requestCareCoverage);
    List<GetRequestCareCoverageByPatientDtoResponse> toDtoList(List<RequestCareCoverage> list);

    List<GetRequestCareCoverageDtoResponse> requestCareCoverageToGetRequestCareCoverageDtos(
            List<RequestCareCoverage> requestCareCoverages
    );
}