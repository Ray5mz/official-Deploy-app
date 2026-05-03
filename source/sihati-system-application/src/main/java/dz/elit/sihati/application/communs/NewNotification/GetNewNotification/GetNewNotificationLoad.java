package dz.elit.sihati.application.communs.NewNotification.GetNewNotification;

import dz.elit.sihati.domain.communication.NewNotification;

import java.util.List;
import java.util.Optional;

public interface GetNewNotificationLoad {
    List<NewNotification> loadAll();
    Optional<NewNotification> findByCode(String code);
}