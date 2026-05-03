package dz.elit.sihati.application.communs.NewNotification.GetLatestOne;

import dz.elit.sihati.domain.communication.NewNotification;

import java.util.Optional;

public interface GetLatestNotificationLoad {
    Optional<NewNotification> findLatestNotificationByPatientCode(String patientCode);
}