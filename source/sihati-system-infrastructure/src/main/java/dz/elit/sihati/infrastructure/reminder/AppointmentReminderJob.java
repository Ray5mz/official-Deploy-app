package dz.elit.sihati.infrastructure.reminder;

import dz.elit.sihati.application.communs.NewNotification.CreateNewNotification.CreateNewNotificationDto;
import dz.elit.sihati.application.communs.NewNotification.CreateNewNotification.CreateNewNotificationUseCase;
import dz.elit.sihati.domain.communication.enumeration.NotificationType;
import lombok.extern.slf4j.Slf4j;
import org.quartz.Job;
import org.quartz.JobDataMap;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Slf4j
@Component
public class AppointmentReminderJob implements Job {

    public static final String APPOINTMENT_ID_KEY = "appointmentId";
    public static final String PATIENT_ID_KEY     = "patientId";

    @Autowired
    private CreateNewNotificationUseCase createNewNotificationUseCase;

    // Required by Quartz — must have no-args constructor
    public AppointmentReminderJob() {}

    @Override
    public void execute(JobExecutionContext context) throws JobExecutionException {
        JobDataMap data = context.getMergedJobDataMap();
        Long appointmentId = data.getLong(APPOINTMENT_ID_KEY);
        Long patientId     = data.getLong(PATIENT_ID_KEY);

        log.info("Firing 24h reminder for appointmentId={} patientId={}", appointmentId, patientId);

        try {
            CreateNewNotificationDto dto = new CreateNewNotificationDto();
            dto.setMessage("Rappel : vous avez un rendez-vous prévu dans 24 heures.");
            dto.setType(NotificationType.RA);
            dto.setPatientId(patientId);
            dto.setRequestAppointmentId(appointmentId);
            dto.setRequestAppointmentStatus(null);

            createNewNotificationUseCase.execute(dto);

            log.info("Reminder notification created successfully for appointmentId={}", appointmentId);
        } catch (Exception e) {
            log.error("Failed to send reminder for appointmentId={}", appointmentId, e);
            throw new JobExecutionException(e, false);
        }
    }
}