package dz.elit.sihati.application.care.RequestAppointment.get.nearest;


public interface GetNearestRequestAppointmentUseCase {
    GetNearestRequestAppointmentDtoResponse execute(String patientCode);
}