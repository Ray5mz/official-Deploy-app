package dz.elit.sihati.application.care.RequestAppointment.commands.CancelRequestAppointment;

public interface CancelRequestAppointmentUseCase {
    CancelRequestAppointmentDtoResponse execute(String appointmentNumber);
}