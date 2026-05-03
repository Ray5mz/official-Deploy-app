package dz.elit.sihati.application.care.RequestAppointment.commands.CancelRequestAppointment;

import dz.elit.sihati.application.care.RequestAppointment.commands.update.UpdateRequestAppointment;
import dz.elit.sihati.domain.care.RequestAppointment;
import dz.elit.sihati.domain.care.enumeration.RequestAppointmentStatus;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@RequiredArgsConstructor
public class CancelRequestAppointmentService implements CancelRequestAppointmentUseCase {

    private final CancelRequestAppointmentLoad cancelRequestAppointmentLoad;
    private final UpdateRequestAppointment updateRequestAppointment;
    private final CancelRequestAppointmentMapper mapper;

    @Override
    public CancelRequestAppointmentDtoResponse execute(String appointmentNumber) {
        Optional<RequestAppointment> optional = cancelRequestAppointmentLoad.findRequestAppointmentByAppointmentNumber(appointmentNumber);
        if (optional.isEmpty()) {
            throw new IllegalArgumentException("Aucun rendez-vous trouvé avec le numéro : " + appointmentNumber);
        }

        RequestAppointment appointment = optional.get();

        if (appointment.getStatus() == RequestAppointmentStatus.ANNULE) {
            throw new IllegalStateException("Le rendez-vous est déjà annulé.");
        }

        appointment.setStatus(RequestAppointmentStatus.ANNULE);
        RequestAppointment saved = updateRequestAppointment.saveRequestAppointment(appointment);

        return mapper.toDto(saved);
    }
}