package dz.elit.sihati.application.reference.agent;

import dz.elit.sihati.domain.reference.Patient;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

@Mapper(componentModel = "spring")
public interface AyantDroitParentMapper {

    @Mapping(source = "employee.firstName", target = "firstName")
    @Mapping(source = "employee.lastName", target = "lastName")
    @Mapping(source = "email", target = "email")
    @Mapping(source = "phoneNumber", target = "phoneNumber")
    @Mapping(source = "employee.employeeNumber", target = "employeeNumber")
    AyantDroitParentDtoResponse toDto(Patient patient);

}