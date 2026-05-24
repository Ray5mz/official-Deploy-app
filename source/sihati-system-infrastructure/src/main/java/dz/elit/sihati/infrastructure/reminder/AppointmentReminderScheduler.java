package dz.elit.sihati.infrastructure.reminder;

import dz.elit.sihati.application.communs.NewNotification.reminder.AppointmentReminderPort;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.quartz.*;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.Date;

@Slf4j
@Service
@RequiredArgsConstructor
public class AppointmentReminderScheduler implements AppointmentReminderPort {

    private static final String GROUP = "appointment-reminders";

    private final Scheduler scheduler;

    @Override
    public void scheduleReminder(Long appointmentId, Long patientId, LocalDateTime appointmentDate) {
        Date fireTime = Date.from(
                appointmentDate.minusMinutes(1)
                        .atZone(ZoneId.systemDefault())
                        .toInstant()
        );

        if (fireTime.before(new Date())) {
            log.warn("Reminder fire time is in the past for appointmentId={}, skipping", appointmentId);
            return;
        }

        try {
            JobKey jobKey = JobKey.jobKey("reminder-" + appointmentId, GROUP);

            // Remove existing job for this appointment (handles reschedule case)
            if (scheduler.checkExists(jobKey)) {
                scheduler.deleteJob(jobKey);
                log.info("Replaced existing reminder for appointmentId={}", appointmentId);
            }

            JobDetail job = JobBuilder.newJob(AppointmentReminderJob.class)
                    .withIdentity(jobKey)
                    .usingJobData(AppointmentReminderJob.APPOINTMENT_ID_KEY, appointmentId)
                    .usingJobData(AppointmentReminderJob.PATIENT_ID_KEY, patientId)
                    .storeDurably()
                    .build();

            Trigger trigger = TriggerBuilder.newTrigger()
                    .withIdentity("trigger-" + appointmentId, GROUP)
                    .startAt(fireTime)
                    .withSchedule(
                            SimpleScheduleBuilder.simpleSchedule()
                                    .withMisfireHandlingInstructionFireNow()
                    )
                    .build();

            scheduler.scheduleJob(job, trigger);

            log.info("Scheduled 24h reminder for appointmentId={} patientId={} firing at {}",
                    appointmentId, patientId, fireTime);

        } catch (SchedulerException e) {
            log.error("Failed to schedule reminder for appointmentId={}", appointmentId, e);
            throw new RuntimeException("Failed to schedule appointment reminder", e);
        }
    }

    @Override
    public void cancelReminder(Long appointmentId) {
        try {
            JobKey jobKey = JobKey.jobKey("reminder-" + appointmentId, GROUP);
            if (scheduler.checkExists(jobKey)) {
                scheduler.deleteJob(jobKey);
                log.info("Cancelled reminder for appointmentId={}", appointmentId);
            }
        } catch (SchedulerException e) {
            // Non-critical — log and continue, don't break the main flow
            log.error("Failed to cancel reminder for appointmentId={}", appointmentId, e);
        }
    }
}