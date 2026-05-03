package dz.elit.sihati.application.communs.NewNotification.MarkAsSeen;

import dz.elit.sihati.domain.communication.NewNotification;

import java.util.Optional;

public interface MarkAsSeenLoad {
    Optional<NewNotification> findByCode(String code);
}