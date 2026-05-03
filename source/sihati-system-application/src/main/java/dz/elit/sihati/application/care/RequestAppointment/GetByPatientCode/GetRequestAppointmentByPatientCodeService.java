package dz.elit.sihati.application.care.RequestAppointment.GetByPatientCode;

import dz.elit.sihati.domain.care.RequestAppointment;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class GetRequestAppointmentByPatientCodeService implements GetRequestAppointmentByPatientCodeUseCase {

    private final GetRequestAppointmentByPatientCodeLoad requestAppointmentByPatientCodeLoad;
    private final GetRequestAppointmentByPatientCodeMapper appointmentByPatientCodeMapper;

    @Override
    public List<GetRequestAppointmentByPatientCodeDtoResponse> execute(String patientCode) {
       List<RequestAppointment> appointments = requestAppointmentByPatientCodeLoad.findRequestAppointmentByPatientCode(patientCode);
        return appointmentByPatientCodeMapper.requestAppointmentToGetRequestAppointmentByPatientCodeDtos(appointments);
    }
}