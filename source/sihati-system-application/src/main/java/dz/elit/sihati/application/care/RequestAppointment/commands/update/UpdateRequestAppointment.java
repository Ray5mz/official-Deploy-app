package dz.elit.sihati.application.care.RequestAppointment.commands.update;

import dz.elit.sihati.domain.care.RequestAppointment;

import java.util.Optional;

public interface UpdateRequestAppointment {
  RequestAppointment saveRequestAppointment(RequestAppointment requestAppointment);
  Optional<RequestAppointment> findRequestAppointmentByAppointmentNumber(String codeAppointment);
}