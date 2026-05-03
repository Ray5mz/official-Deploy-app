package dz.elit.sihati.application.care.RequestAppointment.commands.createrequestappointement;

import dz.elit.sihati.domain.care.TimingDoctor;

import java.util.Optional;

public interface SaveTimingDoctor {
    void updateStatusToIndisponible(Long id);
    void updateStatusToDisponible(Long id);
    Optional<TimingDoctor> findTimingDoctorByCode(String code);
    Optional<TimingDoctor> findTimingDoctorById(Long id);
}