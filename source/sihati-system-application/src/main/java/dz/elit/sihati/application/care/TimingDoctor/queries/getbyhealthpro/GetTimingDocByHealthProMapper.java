package dz.elit.sihati.application.care.TimingDoctor.queries.getbyhealthpro;

import dz.elit.sihati.domain.care.TimingDoctor;
import org.mapstruct.Mapper;

import java.util.List;

@Mapper(componentModel = "spring")
public interface GetTimingDocByHealthProMapper {

    GetTimingDocByHealthProDtoResponse toDto(TimingDoctor timingDoctor);

    List<GetTimingDocByHealthProDtoResponse> toDtos(List<TimingDoctor> timingDoctors);
}