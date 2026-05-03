package dz.elit.sihati.application.care.RequestAppointment.get.nearest;

import dz.elit.sihati.domain.care.RequestAppointment;
import dz.elit.sihati.domain.exceptions.ResourceNotFoundException;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class GetNearestRequestAppointmentService implements GetNearestRequestAppointmentUseCase {

    private final GetNearestRequestAppointmentLoad load;
    private final GetNearestRequestAppointmentMapper mapper;

    @Override
    public GetNearestRequestAppointmentDtoResponse execute(String patientCode) {
        RequestAppointment appointment = load.findNearestAcceptedFutureAppointmentByPatientCode(patientCode)
                .orElseThrow(() -> new ResourceNotFoundException(
                        "No upcoming accepted appointment found for patient with code: " + patientCode));
        return mapper.toDto(appointment);
    }
}