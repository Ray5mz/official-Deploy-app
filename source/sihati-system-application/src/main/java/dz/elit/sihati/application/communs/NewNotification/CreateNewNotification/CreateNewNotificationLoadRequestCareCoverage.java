package dz.elit.sihati.application.communs.NewNotification.CreateNewNotification;

import dz.elit.sihati.domain.care.RequestCareCoverage;

import java.util.Optional;

public interface CreateNewNotificationLoadRequestCareCoverage {
    Optional<RequestCareCoverage> findRequestCareCoverageById(Long id);
}