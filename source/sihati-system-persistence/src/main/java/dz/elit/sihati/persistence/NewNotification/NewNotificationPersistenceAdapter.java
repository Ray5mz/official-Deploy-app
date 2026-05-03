package dz.elit.sihati.persistence.NewNotification;

import dz.elit.sihati.application.communs.NewNotification.CreateNewNotification.*;
import dz.elit.sihati.application.communs.NewNotification.GetByPatient.GetNewNotificationsByPatientCodeLoad;
import dz.elit.sihati.application.communs.NewNotification.GetLatestOne.GetLatestNotificationLoad;
import dz.elit.sihati.application.communs.NewNotification.GetNewNotification.GetNewNotificationLoad;
import dz.elit.sihati.application.communs.NewNotification.MarkAsSeen.MarkAsSeenLoad;
import dz.elit.sihati.application.communs.NewNotification.MarkAsSeen.UpdateNewNotification;
import dz.elit.sihati.domain.care.RequestAppointment;
import dz.elit.sihati.domain.care.RequestCareCoverage;
import dz.elit.sihati.domain.communication.NewNotification;
import dz.elit.sihati.domain.reference.Patient;
import dz.elit.sihati.persistence.care.requestappointment.RequestAppointmentRepository;
import dz.elit.sihati.persistence.care.requestcarecoverage.RequestCareCoverageRepository;
import dz.elit.sihati.persistence.reference.patient.PatientRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Optional;

@Component
@RequiredArgsConstructor
public class NewNotificationPersistenceAdapter implements
        GetNewNotificationLoad,
        MarkAsSeenLoad,
        UpdateNewNotification,
        CreateNewNotification,
        CreateNewNotificationLoadPatient,
        GetMaxNotificationCode,
        CreateNewNotificationLoadRequestAppointment,
        CreateNewNotificationLoadRequestCareCoverage,
        GetNewNotificationsByPatientCodeLoad ,
        GetLatestNotificationLoad
{

    private final NewNotificationRepository repository;
    private final PatientRepository patientRepository;
    private final RequestAppointmentRepository requestAppointmentRepository;
    private final RequestCareCoverageRepository requestCareCoverageRepository;

    @Override
    public List<NewNotification> loadAll() {
        return repository.findAll();
    }

    @Override
    public Optional<NewNotification> findByCode(String code) {
        return repository.findByCode(code);
    }

    @Override
    public NewNotification save(NewNotification notification) {
        return repository.save(notification);
    }

    //@Override
    //public Optional<Patient> findPatientByCode(String code) {
    //    return patientRepository.findPatientByCode(code);
    //}
    @Override
    public Optional<Patient> findPatientById(Long id) {
        return patientRepository.findById(id);
    }
    @Override
    public Optional<String> getMaxNotificationCode() {
        return repository.getMaxNotificationCode(PageRequest.of(0, 1))
                .stream()
                .findFirst();
    }
    @Override
    public Optional<RequestAppointment> findRequestAppointmentById(Long id) {
        return requestAppointmentRepository.findById(id);
    }

    @Override
    public Optional<RequestCareCoverage> findRequestCareCoverageById(Long id) {
        return requestCareCoverageRepository.findById(id);
    }
    @Override
    public List<NewNotification> findNotificationsByPatientCode(String patientCode) {
        return repository.findNotificationsByPatientCode(patientCode);
    }
    @Override
    public Optional<NewNotification> findLatestNotificationByPatientCode(String patientCode) {
        return repository
                .findLatestNotificationByPatientCode(
                        patientCode,
                        PageRequest.of(0, 1)  // add import: org.springframework.data.domain.PageRequest
                )
                .stream()
                .findFirst();
    }
}
