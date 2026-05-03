package dz.elit.sihati.application.care.RequestAppointment.get.nearest;

import dz.elit.sihati.domain.care.RequestAppointment;

import java.util.Optional;

public interface GetNearestRequestAppointmentLoad {
    Optional<RequestAppointment> findNearestAcceptedFutureAppointmentByPatientCode(String patientCode);
}