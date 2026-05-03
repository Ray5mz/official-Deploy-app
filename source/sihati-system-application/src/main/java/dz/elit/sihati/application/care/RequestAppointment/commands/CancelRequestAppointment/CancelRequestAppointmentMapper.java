package dz.elit.sihati.application.care.RequestAppointment.commands.CancelRequestAppointment;

import dz.elit.sihati.domain.care.RequestAppointment;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface CancelRequestAppointmentMapper {
    CancelRequestAppointmentDtoResponse toDto(RequestAppointment appointment);
}