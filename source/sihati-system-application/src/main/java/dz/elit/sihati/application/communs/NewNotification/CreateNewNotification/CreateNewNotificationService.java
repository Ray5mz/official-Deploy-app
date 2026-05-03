package dz.elit.sihati.application.communs.NewNotification.CreateNewNotification;

import dz.elit.sihati.domain.care.RequestAppointment;
import dz.elit.sihati.domain.care.RequestCareCoverage;
import dz.elit.sihati.domain.care.enumeration.RequestAppointmentStatus;
import dz.elit.sihati.domain.care.enumeration.RequestCareCoverageStatus;
import dz.elit.sihati.domain.communication.NewNotification;
import dz.elit.sihati.domain.exceptions.ResourceNotFoundException;
import dz.elit.sihati.domain.reference.Patient;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

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

    @Override
    public CreateNewNotificationDtoResponse execute(CreateNewNotificationDto dto) {

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