package dz.elit.sihati.application.communs.NewNotification.CreateNewNotification;

import dz.elit.sihati.domain.reference.Patient;
import java.util.Optional;

public interface CreateNewNotificationLoadPatient {
    Optional<Patient> findPatientById(Long id);
}