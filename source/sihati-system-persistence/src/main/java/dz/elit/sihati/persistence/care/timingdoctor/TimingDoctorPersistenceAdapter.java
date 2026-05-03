package dz.elit.sihati.persistence.care.timingdoctor;

import dz.elit.sihati.application.care.RequestAppointment.commands.createrequestappointement.SaveTimingDoctor;
import dz.elit.sihati.application.care.TimingDoctor.queries.getbyhealthpro.GetTimingDocByHealthProLoad;
import dz.elit.sihati.application.care.TimingDoctor.queries.getlistbyspe.GetTimingDoctorSpeLoad;
import dz.elit.sihati.application.care.TimingDoctor.queries.getlisting.GetTimingDoctorLoad;
import dz.elit.sihati.domain.care.TimingDoctor;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Optional;

@Component
@RequiredArgsConstructor
public class TimingDoctorPersistenceAdapter implements GetTimingDoctorLoad, GetTimingDoctorSpeLoad, GetTimingDocByHealthProLoad, SaveTimingDoctor {

    private final TimingDoctorRepository timingDoctorRepository;

    @Override
    public List<TimingDoctor> loadAll() {
        return timingDoctorRepository.findAll();
    }

    @Override
    public List<TimingDoctor> getTimingDoctorByspeciality(String codeSpecialty) {
        return timingDoctorRepository.findBySpecialtyCode(codeSpecialty);
    }

    @Override
    public void updateStatusToIndisponible(Long id) {
        timingDoctorRepository.updateStatus(id, "INDISPONIBLE");
    }

    @Override
    public void updateStatusToDisponible(Long id) {
        timingDoctorRepository.updateStatus(id, "DISPONIBLE");
    }

    @Override
    public Optional<TimingDoctor> findTimingDoctorByCode(String code) {
        return timingDoctorRepository.findTimingDoctorByCode(code);
    }
    @Override
    public Optional<TimingDoctor> findTimingDoctorById(Long id) {
        return timingDoctorRepository.findById(id);
    }
    @Override
    public List<TimingDoctor> findTimingDoctorByHealthProfessionalId(Long id) {
        return timingDoctorRepository.findByHealthProfessionalId(id);
    }
}