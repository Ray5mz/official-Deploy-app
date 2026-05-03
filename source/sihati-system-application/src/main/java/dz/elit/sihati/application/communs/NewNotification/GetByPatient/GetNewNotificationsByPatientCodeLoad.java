package dz.elit.sihati.application.communs.NewNotification.GetByPatient;

import dz.elit.sihati.domain.communication.NewNotification;

import java.util.List;

public interface GetNewNotificationsByPatientCodeLoad {
    List<NewNotification> findNotificationsByPatientCode(String patientCode);
}