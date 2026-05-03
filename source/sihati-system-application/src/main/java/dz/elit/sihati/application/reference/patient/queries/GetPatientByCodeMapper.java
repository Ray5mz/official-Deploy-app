package dz.elit.sihati.application.reference.patient.queries;

import dz.elit.sihati.domain.reference.Patient;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;


@Mapper(componentModel = "spring")
public interface GetPatientByCodeMapper {

    @Mapping(source = "employee.employeeNumber", target = "employeeNumber")

    GetPatientByCodeDtoResponse patientToGetPatientByCodeDtoResponse(Patient patient);


}
