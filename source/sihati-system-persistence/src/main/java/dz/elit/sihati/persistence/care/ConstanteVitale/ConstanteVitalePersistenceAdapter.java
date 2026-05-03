package dz.elit.sihati.persistence.care.ConstanteVitale;

import dz.elit.sihati.application.care.ConstanteVitale.queries.GetConstanteVitaleByPatientCode.GetConstanteVitaleByPatientLoad;
import dz.elit.sihati.application.care.ConstanteVitale.queries.getconsulting.GetConstanteVitaleConsultLoad;
import dz.elit.sihati.application.care.ConstanteVitale.queries.getlisting.GetConstanteVitaleLoad;
import dz.elit.sihati.domain.care.ConstanteVitale;
import dz.elit.sihati.persistence.care.consultation.ConsultationRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
@RequiredArgsConstructor
public class ConstanteVitalePersistenceAdapter implements GetConstanteVitaleLoad, GetConstanteVitaleConsultLoad , GetConstanteVitaleByPatientLoad {

    private final ConstanteVitaleRepository constanteVitaleRepository;
    private final ConsultationRepository consultationRepository;
    @Override
    public List<ConstanteVitale> loadAll() {
        return constanteVitaleRepository.findAll();
    }

    @Override
    public ConstanteVitale loadByConstanteVitaleNumber(String constantevitaleNumber) {
        return constanteVitaleRepository.findByConstantevitaleNumber(constantevitaleNumber)
                .orElseThrow(() -> new RuntimeException("Constante vitale not found"));
    }
    @Override
    public List<ConstanteVitale> getByPatientCode(String patientCode) {
        return consultationRepository.findConstanteVitaleByPatientCode(patientCode);
    }
}