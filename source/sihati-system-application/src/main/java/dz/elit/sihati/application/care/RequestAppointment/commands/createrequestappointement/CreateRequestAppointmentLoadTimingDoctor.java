package dz.elit.sihati.application.care.RequestAppointment.commands.createrequestappointement;

import dz.elit.sihati.domain.care.TimingDoctor;

import java.util.Optional;

public interface CreateRequestAppointmentLoadTimingDoctor {
    Optional<TimingDoctor> findTimingDoctorById(Long id);
Optional<TimingDoctor> findTimingDoctorBycode(String code);

}