package dz.elit.sihati.application.communs.NewNotification.CreateNewNotification;

import dz.elit.sihati.domain.care.RequestAppointment;

import java.util.Optional;

public interface CreateNewNotificationLoadRequestAppointment {
    Optional<RequestAppointment> findRequestAppointmentById(Long id);
}