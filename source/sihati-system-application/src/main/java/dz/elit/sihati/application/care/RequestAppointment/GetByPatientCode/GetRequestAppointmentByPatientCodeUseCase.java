package dz.elit.sihati.application.care.RequestAppointment.GetByPatientCode;


import java.util.List;

public interface GetRequestAppointmentByPatientCodeUseCase {
    List<GetRequestAppointmentByPatientCodeDtoResponse> execute(String patientCode);
}
