package dz.elit.sihati.application.care.RequestAppointment.commands.CancelRequestAppointment;

import dz.elit.sihati.domain.care.RequestAppointment;

import java.util.Optional;

public interface CancelRequestAppointmentLoad {
    Optional<RequestAppointment> findRequestAppointmentByAppointmentNumber(String appointmentNumber);
}