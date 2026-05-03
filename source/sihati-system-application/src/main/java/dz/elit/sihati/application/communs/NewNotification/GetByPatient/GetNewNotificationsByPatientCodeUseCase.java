package dz.elit.sihati.application.communs.NewNotification.GetByPatient;

import java.util.List;

public interface GetNewNotificationsByPatientCodeUseCase {
    List<GetNewNotificationsByPatientCodeDtoResponse> execute(String patientCode);
}