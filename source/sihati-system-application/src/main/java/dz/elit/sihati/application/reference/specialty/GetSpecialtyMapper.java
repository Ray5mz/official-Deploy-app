package dz.elit.sihati.application.reference.specialty;

import dz.elit.sihati.domain.reference.Specialty;
import org.mapstruct.Mapper;

import java.util.List;

@Mapper(componentModel = "spring")
public interface GetSpecialtyMapper {
    List<GetSpecialtyDtoResponse> specialtiesToGetSpecialtyDtos(List<Specialty> specialties);
    GetSpecialtyDtoResponse specialtyToGetSpecialtyDto(Specialty specialty);
}
