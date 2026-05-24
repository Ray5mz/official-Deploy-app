package dz.elit.sihati.application.communs.NewNotification.CreateNewNotification;

import dz.elit.sihati.application.communs.NewNotification.reminder.AppointmentReminderPort;
import dz.elit.sihati.domain.care.RequestAppointment;
import dz.elit.sihati.domain.care.RequestCareCoverage;
import dz.elit.sihati.domain.care.enumeration.RequestAppointmentStatus;
import dz.elit.sihati.domain.care.enumeration.RequestCareCoverageStatus;
import dz.elit.sihati.domain.communication.NewNotification;
import dz.elit.sihati.domain.exceptions.ResourceNotFoundException;
import dz.elit.sihati.domain.reference.Patient;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

@Slf4j
@Service
@RequiredArgsConstructor
@Transactional
public class CreateNewNotificationService implements CreateNewNotificationUseCase {

    private final CreateNewNotification createNewNotification;
    private final CreateNewNotificationLoadPatient loadPatient;
    private final CreateNewNotificationLoadRequestAppointment loadRequestAppointment;
    private final CreateNewNotificationLoadRequestCareCoverage loadRequestCareCoverage;
    private final GetMaxNotificationCode getMaxNotificationCode;
    private final CreateNewNotificationMapper mapper;
    private final AppointmentReminderPort appointmentReminderPort;

    @Override
    public CreateNewNotificationDtoResponse execute(CreateNewNotificationDto dto) {

        log.info("CreateNewNotificationService.execute called — patientId={} appointmentId={} status={}",
                dto.getPatientId(), dto.getRequestAppointmentId(), dto.getRequestAppointmentStatus());

        Patient patient = loadPatient.findPatientById(dto.getPatientId())
                .orElseThrow(() -> new ResourceNotFoundException(
                        "Patient with id=" + dto.getPatientId() + " not found"));

        NewNotification notification = mapper.toEntity(dto);
        notification.setPatient(patient);
        notification.setSeen(false);
        notification.setCode(generateCode());

        // Update appointment status if provided
        if (dto.getRequestAppointmentId() != null && dto.getRequestAppointmentStatus() != null) {
            RequestAppointment appointment = loadRequestAppointment
                    .findRequestAppointmentById(dto.getRequestAppointmentId())
                    .orElseThrow(() -> new ResourceNotFoundException(
                            "RequestAppointment with id=" + dto.getRequestAppointmentId() + " not found"));
            appointment.setStatus(dto.getRequestAppointmentStatus());

            // Populate medicalCenter and specialty from timingDoctor if missing
            if (appointment.getMedicalCenter() == null && appointment.getTimingDoctor() != null) {
                appointment.setMedicalCenter(appointment.getTimingDoctor().getMedicalCenter());
            }
            if (appointment.getSpecialty() == null && appointment.getTimingDoctor() != null) {
                appointment.setSpecialty(appointment.getTimingDoctor().getSpecialty());
            }

            // Schedule or cancel 24h reminder based on the new status
            handleReminderForAppointment(appointment, dto.getRequestAppointmentStatus());
        } else {
            log.info("Skipping reminder handling — appointmentId={} status={}",
                    dto.getRequestAppointmentId(), dto.getRequestAppointmentStatus());
        }

        // Update care coverage status if provided
        if (dto.getRequestCareCoverageId() != null && dto.getRequestCareCoverageStatus() != null) {
            RequestCareCoverage coverage = loadRequestCareCoverage
                    .findRequestCareCoverageById(dto.getRequestCareCoverageId())
                    .orElseThrow(() -> new ResourceNotFoundException(
                            "RequestCareCoverage with id=" + dto.getRequestCareCoverageId() + " not found"));
            coverage.setStatus(dto.getRequestCareCoverageStatus());
        }

        NewNotification saved = createNewNotification.save(notification);
        return mapper.toResponse(saved);
    }

    /**
     * Schedules a 24h reminder when appointment is accepted,
     * cancels any existing reminder when it is refused or cancelled.
     */
    private void handleReminderForAppointment(RequestAppointment appointment,
                                              RequestAppointmentStatus newStatus) {
        log.info("handleReminderForAppointment called — id={} status={} date={} patientId={}",
                appointment.getId(), newStatus, appointment.getAppointmentDate(),
                appointment.getPatient().getId());

        if (newStatus == RequestAppointmentStatus.ACCEPTE) {
            if (appointment.getAppointmentDate() != null) {
                log.info("Calling scheduleReminder for appointmentId={}", appointment.getId());
                appointmentReminderPort.scheduleReminder(
                        appointment.getId(),
                        appointment.getPatient().getId(),
                        appointment.getAppointmentDate()
                );
            } else {
                log.warn("appointmentDate is null for appointmentId={}, skipping reminder", appointment.getId());
            }
        } else if (newStatus == RequestAppointmentStatus.REFUSE
                || newStatus == RequestAppointmentStatus.ANNULE) {
            log.info("Cancelling reminder for appointmentId={}", appointment.getId());
            appointmentReminderPort.cancelReminder(appointment.getId());
        }
    }

    private String generateCode() {
        Optional<String> maxCode = getMaxNotificationCode.getMaxNotificationCode();
        int nextNumber = 1;
        if (maxCode.isPresent()) {
            try {
                String numberPart = maxCode.get().substring(maxCode.get().indexOf('-') + 1);
                nextNumber = Integer.parseInt(numberPart) + 1;
            } catch (Exception ignored) {}
        }
        return String.format("NOTIF-%03d", nextNumber);
    }
}