package dz.elit.sihati.application.care.RequestAppointment.commands.createrequestappointement;

import dz.elit.sihati.domain.care.RequestAppointment;

public interface CreateRequestAppointment {
    RequestAppointment saveRequestAppointment(RequestAppointment requestAppointment);
}
