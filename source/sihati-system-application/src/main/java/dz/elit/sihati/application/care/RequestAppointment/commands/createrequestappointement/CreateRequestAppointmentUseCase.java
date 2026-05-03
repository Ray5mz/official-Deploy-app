package dz.elit.sihati.application.care.RequestAppointment.commands.createrequestappointement;


public interface CreateRequestAppointmentUseCase {
    CreateRequestAppointmentDtoResponse execute(CreateRequestAppointmentDto AppointmentCreateDto, String medicalCenterCode);
}
