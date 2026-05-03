package dz.elit.sihati.application.care.RequestAppointment.commands.createrequestappointement;

import dz.elit.sihati.domain.care.RequestAppointment;
import dz.elit.sihati.domain.care.TimingDoctor;
import dz.elit.sihati.domain.care.enumeration.RequestAppointmentStatus;
import dz.elit.sihati.domain.exceptions.ResourceNotFoundException;
import dz.elit.sihati.domain.reference.Patient;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
@Transactional
class CreateAppointmentService implements CreateRequestAppointmentUseCase {

    private final CreateRequestAppointment createRequestAppointment;
    private final CreateRequestAppointmentLoadPatient loadPatient;
    private final CreateRequestAppointmentLoadTimingDoctor loadTimingDoctor;
    private final CreateRequestAppointmentMapper createRequestAppointmentMapper;
    private final SaveTimingDoctor saveTimingDoctor;

    @Override
    public CreateRequestAppointmentDtoResponse execute(CreateRequestAppointmentDto dto, String medicalCenterCode) {

        RequestAppointment requestAppointment = new RequestAppointment();

        requestAppointment.setReason(dto.getRaison());
        requestAppointment.setAppointmentDate(dto.getRequestappointmentDate());
        requestAppointment.setAppointmentNumber("RDV-" + System.currentTimeMillis());
        requestAppointment.setStatus(RequestAppointmentStatus.MIS_EN_ATTENTE);

        Patient patient = loadPatient.findPatientByCode(dto.getPatientCode())
                .orElseThrow(() -> new ResourceNotFoundException(
                        "Patient with code=" + dto.getPatientCode() + " does not exist"));
        requestAppointment.setPatient(patient);

        TimingDoctor timingDoctor;
        if (dto.getTimingDoctorId() != null) {
            timingDoctor = loadTimingDoctor.findTimingDoctorById(dto.getTimingDoctorId())
                    .orElseThrow(() -> new ResourceNotFoundException(
                            "TimingDoctor with id=" + dto.getTimingDoctorId() + " does not exist"));
        } else {
            timingDoctor = loadTimingDoctor.findTimingDoctorBycode(dto.getTimingDoctorCode())
                    .orElseThrow(() -> new ResourceNotFoundException(
                            "TimingDoctor with code=" + dto.getTimingDoctorCode() + " does not exist"));
        }
        saveTimingDoctor.updateStatusToIndisponible(timingDoctor.getId());

        requestAppointment.setTimingDoctor(timingDoctor);

        RequestAppointment saved = createRequestAppointment.saveRequestAppointment(requestAppointment);

        return createRequestAppointmentMapper.appointmentToCreateAppointmentDtoResponse(saved);
    }
}