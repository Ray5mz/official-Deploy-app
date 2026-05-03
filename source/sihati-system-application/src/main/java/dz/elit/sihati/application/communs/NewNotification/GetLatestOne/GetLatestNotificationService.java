package dz.elit.sihati.application.communs.NewNotification.GetLatestOne;

import dz.elit.sihati.domain.communication.NewNotification;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class GetLatestNotificationService implements GetLatestNotificationUseCase {

    private final GetLatestNotificationLoad load;
    private final GetLatestNotificationMapper mapper;

    @Override
    public GetLatestNotificationDtoResponse execute(String patientCode) {

        NewNotification notification = load
                .findLatestNotificationByPatientCode(patientCode)
                .orElse(null);

        if (notification == null) {
            return null; // or throw exception if you prefer
        }

        return mapper.toDto(notification);
    }
}