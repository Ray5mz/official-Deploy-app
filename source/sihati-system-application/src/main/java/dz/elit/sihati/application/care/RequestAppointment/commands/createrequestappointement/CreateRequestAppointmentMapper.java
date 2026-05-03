package dz.elit.sihati.application.care.RequestAppointment.commands.createrequestappointement;

import dz.elit.sihati.domain.care.RequestAppointment;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

@Mapper(componentModel = "spring")
public interface CreateRequestAppointmentMapper {

    @Mapping(source = "patient.phoneNumber", target = "patient.phone")
    CreateRequestAppointmentDtoResponse appointmentToCreateAppointmentDtoResponse(RequestAppointment requestappointment);

    RequestAppointment appointmentDtoToAppointment(CreateRequestAppointment appointmentDto);
}