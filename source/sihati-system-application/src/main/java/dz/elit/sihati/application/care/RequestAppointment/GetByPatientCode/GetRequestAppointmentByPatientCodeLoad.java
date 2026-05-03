package dz.elit.sihati.application.care.RequestAppointment.GetByPatientCode;

import dz.elit.sihati.domain.care.RequestAppointment;

import java.util.List;


public interface GetRequestAppointmentByPatientCodeLoad {
    List<RequestAppointment> findRequestAppointmentByPatientCode(String code);
}
