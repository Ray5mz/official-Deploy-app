package dz.elit.sihati.application.care.RequestAppointment.GetByPatientCode;

import dz.elit.sihati.domain.care.RequestAppointment;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

import java.util.List;
@Mapper(componentModel = "spring")
public interface GetRequestAppointmentByPatientCodeMapper {


    List<GetRequestAppointmentByPatientCodeDtoResponse> requestAppointmentToGetRequestAppointmentByPatientCodeDtos(List<RequestAppointment> requestAppointment);

    @Mapping(target = "specialtyName", source = "specialty.name")
    @Mapping(source = "patient.code", target = "patientcode")
    @Mapping(source = "timingDoctor.code", target = "timingdoctorcode")
    GetRequestAppointmentByPatientCodeDtoResponse requestAppointmentToGetRequestAppointmentDto(RequestAppointment requestAppointment);
}
