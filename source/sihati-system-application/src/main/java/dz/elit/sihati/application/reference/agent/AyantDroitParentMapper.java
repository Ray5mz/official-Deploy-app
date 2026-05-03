package dz.elit.sihati.application.reference.agent;

import dz.elit.sihati.domain.reference.Employee;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface AyantDroitParentMapper {

        AyantDroitParentDtoResponse toDto(Employee employee);

    }
