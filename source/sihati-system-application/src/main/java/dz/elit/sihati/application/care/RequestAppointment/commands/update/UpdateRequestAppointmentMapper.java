package dz.elit.sihati.application.care.RequestAppointment.commands.update;

import dz.elit.sihati.domain.care.RequestAppointment;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface UpdateRequestAppointmentMapper {




  RequestAppointment updateRequestAppointmentDtoToRequestAppointment(UpdateRequestAppointmentDto updateRequestAppointment);
  UpdateRequestAppointmentDtoResponse requestAppointmentToUpdateRequestAppointmentDtoResponse(RequestAppointment requestAppointment);
}