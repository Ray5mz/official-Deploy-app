package dz.elit.sihati.application.communs.NewNotification.GetLatestOne;

public interface GetLatestNotificationUseCase {
    GetLatestNotificationDtoResponse execute(String patientCode);
}