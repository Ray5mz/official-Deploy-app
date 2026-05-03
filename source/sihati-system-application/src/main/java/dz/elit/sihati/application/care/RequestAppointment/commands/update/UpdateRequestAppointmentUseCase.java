package dz.elit.sihati.application.care.RequestAppointment.commands.update;

public interface UpdateRequestAppointmentUseCase {
    UpdateRequestAppointmentDtoResponse execute(UpdateRequestAppointmentDto RequestAppointmentUpdateDto,String appointmentNumber, String timingdoctorcode);


}
