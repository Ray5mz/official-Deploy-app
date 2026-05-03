package dz.elit.sihati.application.care.RequestAppointment.get;

import dz.elit.sihati.domain.care.RequestAppointment;

import java.util.List;
import java.util.Optional;

public interface GetRequestAppointmentLoad {
    List<RequestAppointment> loadAll();

    Optional<RequestAppointment> findRequestAppointmentByAppointmentNumber(String appointmentNumber);
}

