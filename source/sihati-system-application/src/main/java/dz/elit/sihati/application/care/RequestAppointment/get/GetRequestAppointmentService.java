package dz.elit.sihati.application.care.RequestAppointment.get;
import dz.elit.sihati.domain.care.RequestAppointment;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class GetRequestAppointmentService implements GetRequestAppointmentUseCase {
    private final GetRequestAppointmentLoad requestAppointmentLoad;
    private final GetRequestAppointmentMapper appointmentMapper;
    @Override
    public List<GetRequestAppointmentDtoResponse> execute() {
        List<RequestAppointment> requestAppointment= requestAppointmentLoad.loadAll();
        return appointmentMapper.requestAppointmentToGetRequestAppointmentDtos(requestAppointment);

    }
}
