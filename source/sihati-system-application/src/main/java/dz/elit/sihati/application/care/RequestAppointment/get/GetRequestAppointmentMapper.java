package dz.elit.sihati.application.care.RequestAppointment.get;

import dz.elit.sihati.domain.care.RequestAppointment;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

import java.util.List;

@Mapper(componentModel = "spring")
public interface GetRequestAppointmentMapper {

    List<GetRequestAppointmentDtoResponse> requestAppointmentToGetRequestAppointmentDtos(List<RequestAppointment> requestAppointment);
    @Mapping(source = "patient.code", target = "patientcode")
    @Mapping(source = "timingDoctor.code", target = "timingdoctorcode")
    @Mapping(source= "specialty.id", target = "specialtyid")
    @Mapping(source= "timingDoctor.id", target = "timingdoctorid")
    GetRequestAppointmentDtoResponse requestAppointmentToGetRequestAppointmentDto(RequestAppointment requestAppointment);
}
