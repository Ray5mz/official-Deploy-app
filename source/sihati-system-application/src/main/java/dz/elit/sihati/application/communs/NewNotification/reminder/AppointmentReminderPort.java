package dz.elit.sihati.application.communs.NewNotification.reminder;

import java.time.LocalDateTime;

/**
 * Port (driven side) — the application layer defines this interface,
 * the infrastructure module provides the Quartz-based implementation.
 */
public interface AppointmentReminderPort {

    /**
     * Schedule a 24h-before reminder for the given appointment.
     * Safe to call multiple times — replaces any existing reminder for the same appointmentId.
     */
    void scheduleReminder(Long appointmentId, Long patientId, LocalDateTime appointmentDate);

    /**
     * Cancel any pending reminder for the given appointment
     * (called when appointment is refused or cancelled).
     */
    void cancelReminder(Long appointmentId);
}