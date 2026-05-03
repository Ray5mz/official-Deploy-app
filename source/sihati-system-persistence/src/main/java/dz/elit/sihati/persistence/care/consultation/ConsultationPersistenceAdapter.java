package dz.elit.sihati.persistence.care.consultation;


import dz.elit.sihati.application.care.consultation.queries.GetLastConsultation.GetLastConsultationLoad;
import dz.elit.sihati.application.care.consultation.queries.getConsultationByPatientCode.GetConsultationByPatientLoad;
import dz.elit.sihati.application.care.consultation.queries.getconsultation.GetConsultationLoad;
import dz.elit.sihati.application.care.consultation.queries.getconsultationlist.GetConsultationListLoad;
import dz.elit.sihati.domain.care.Consultation;
import dz.elit.sihati.domain.exceptions.ResourceNotFoundException;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Optional;

@Component
@RequiredArgsConstructor
public class ConsultationPersistenceAdapter implements GetConsultationListLoad, GetConsultationLoad, GetConsultationByPatientLoad, GetLastConsultationLoad {

    private final ConsultationRepository consultationRepository;


    @Override
    public List<Consultation> getconsultationList() {

        return consultationRepository.findconsultations();
    }


    @Override
    public Consultation get(String consultationNumber) {

        return consultationRepository
                .findConsultationByConsultationNumber(consultationNumber)
                .orElseThrow(() ->
                        new ResourceNotFoundException(
                                String.format("Consultation with number %s not found",
                                        consultationNumber)));
    }

    @Override
    public List<Consultation> getByPatientCode(String patientCode) {

        return consultationRepository.findConsultationsByPatientCode(patientCode);
    }

    @Override
    public Optional<Consultation> findLastByPatientCode(String patientCode) {
        Pageable pageable = PageRequest.of(0, 1);
        List<Consultation> consultations = consultationRepository.findLastConsultationByPatientCode(patientCode, pageable);
        return consultations.isEmpty() ? Optional.empty() : Optional.of(consultations.get(0));
    }


}
