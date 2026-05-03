package dz.elit.sihati.application.care.RequestAppointment.commands.update;

import dz.elit.sihati.application.care.RequestAppointment.commands.createrequestappointement.SaveTimingDoctor;
import dz.elit.sihati.domain.care.RequestAppointment;
import dz.elit.sihati.domain.care.TimingDoctor;
import dz.elit.sihati.domain.care.enumeration.RequestAppointmentStatus;
import dz.elit.sihati.domain.exceptions.ResourceNotFoundException;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
public class UpdateRequestAppointmentService implements UpdateRequestAppointmentUseCase {

  private final UpdateRequestAppointment updateRequestAppointment;
  private final UpdateRequestAppointmentMapper updateAppointmentMapper;
  private final SaveTimingDoctor saveTimingDoctor;

  @Override
  @Transactional
  public UpdateRequestAppointmentDtoResponse execute(
          UpdateRequestAppointmentDto requestAppointmentUpdateDto,
          String appointmentNumber,
          String healthProfessionalCode) {

    // 1. Load existing appointment
    RequestAppointment requestAppointment = updateRequestAppointment
            .findRequestAppointmentByAppointmentNumber(appointmentNumber)
            .orElseThrow(() -> new ResourceNotFoundException(
                    "Appointment with code=" + appointmentNumber + " does not exist"));

    String newTimingDoctorCode = requestAppointmentUpdateDto.getTimingdoctorcode();
    Long newTimingDoctorId = requestAppointmentUpdateDto.getTimingDoctorId();
    TimingDoctor currentTimingDoctor = requestAppointment.getTimingDoctor();

    boolean timingDoctorChanged = (newTimingDoctorId != null &&
            (currentTimingDoctor == null || !currentTimingDoctor.getId().equals(newTimingDoctorId)))
            || (newTimingDoctorCode != null &&
            (currentTimingDoctor == null || !currentTimingDoctor.getCode().equalsIgnoreCase(newTimingDoctorCode)));

    if (timingDoctorChanged) {
      TimingDoctor newTimingDoctor;
      if (newTimingDoctorId != null) {
        newTimingDoctor = saveTimingDoctor.findTimingDoctorById(newTimingDoctorId)
                .orElseThrow(() -> new ResourceNotFoundException(
                        "TimingDoctor with id=" + newTimingDoctorId + " does not exist"));
      } else {
        newTimingDoctor = saveTimingDoctor.findTimingDoctorByCode(newTimingDoctorCode)
                .orElseThrow(() -> new ResourceNotFoundException(
                        "TimingDoctor with code=" + newTimingDoctorCode + " does not exist"));
      }

      if (currentTimingDoctor != null) {
        saveTimingDoctor.updateStatusToDisponible(currentTimingDoctor.getId());
      }
      saveTimingDoctor.updateStatusToIndisponible(newTimingDoctor.getId());
      requestAppointment.setTimingDoctor(newTimingDoctor);
    }

    // 7. Update fields
    requestAppointment.setReason(requestAppointmentUpdateDto.getReason());
    requestAppointment.setAppointmentDate(requestAppointmentUpdateDto.getAppointmentDate());
    requestAppointment.setStatus(RequestAppointmentStatus.MIS_EN_ATTENTE);

    RequestAppointment saved = updateRequestAppointment.saveRequestAppointment(requestAppointment);
    return updateAppointmentMapper.requestAppointmentToUpdateRequestAppointmentDtoResponse(saved);
  }
}