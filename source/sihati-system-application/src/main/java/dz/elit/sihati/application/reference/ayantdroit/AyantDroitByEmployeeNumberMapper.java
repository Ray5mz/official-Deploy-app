package dz.elit.sihati.application.reference.ayantdroit;

import dz.elit.sihati.domain.reference.Patient;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

import java.util.List;

@Mapper(componentModel = "spring")
public interface AyantDroitByEmployeeNumberMapper {

  @Mapping(source = "employee.employeeNumber", target = "employeeNumber")
  @Mapping(source = "code", target = "code")
  @Mapping(source = "email", target = "email")
  @Mapping(source = "phoneNumber", target = "phoneNumber")
  @Mapping(source = "relationship", target = "relation")
  AyantDroitByEmployeeNumberDtoResponse toDto(Patient patient);

    List<AyantDroitByEmployeeNumberDtoResponse> toDtos(List<Patient> patients);
}