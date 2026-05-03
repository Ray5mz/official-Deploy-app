package dz.elit.sihati.application.communs.NewNotification.GetNewNotification;

import dz.elit.sihati.domain.communication.NewNotification;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class GetNewNotificationService implements GetNewNotificationUseCase {

    private final GetNewNotificationLoad load;
    private final GetNewNotificationMapper mapper;

    @Override
    public List<GetNewNotificationDtoResponse> execute() {
        List<NewNotification> notifications = load.loadAll();
        return mapper.toDtoList(notifications);
    }
}