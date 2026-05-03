package dz.elit.sihati.persistence.care.dashboard;

import dz.elit.sihati.application.care.dashboard.ConstanteVitaleChartDtoResponse;
import dz.elit.sihati.application.care.dashboard.GetLastConstanteVitalePort;
import dz.elit.sihati.application.care.dashboard.LastConstanteVitaleDtoResponse;
import dz.elit.sihati.domain.care.ConstanteVitale;
import dz.elit.sihati.persistence.care.consultation.ConsultationRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.stream.Collectors;

@Component
@RequiredArgsConstructor
public class dashConstanteVitalePersistenceAdapter implements GetLastConstanteVitalePort {

    private final ConsultationRepository consultationRepository;

    @Override
    public LastConstanteVitaleDtoResponse getLastConstanteVitale(String patientCode) {
        List<ConstanteVitale> list = consultationRepository.findLastConstanteVitale(patientCode);
        if (list.isEmpty()) return null;
        ConstanteVitale cv = list.get(0);
        return LastConstanteVitaleDtoResponse.builder()
                .weight(cv.getWeight())
                .glycemie(cv.getGlycemie())
                .blodPressure(cv.getBlodPressure())
                .height(cv.getHeight())
                .date(cv.getSaveDate())
                .build();
    }

    @Override
    public List<ConstanteVitaleChartDtoResponse> getWeightHistory(String patientCode) {
        return consultationRepository.findAllConstanteVitaleHistory(patientCode)
                .stream()
                .filter(cv -> cv.getWeight() != null)
                .map(cv -> new ConstanteVitaleChartDtoResponse(cv.getSaveDate(), cv.getWeight()))
                .collect(Collectors.toList());
    }

    @Override
    public List<ConstanteVitaleChartDtoResponse> getHeightHistory(String patientCode) {
        return consultationRepository.findAllConstanteVitaleHistory(patientCode)
                .stream()
                .filter(cv -> cv.getHeight() != null)
                .map(cv -> new ConstanteVitaleChartDtoResponse(cv.getSaveDate(), cv.getHeight()))
                .collect(Collectors.toList());
    }

    @Override
    public List<ConstanteVitaleChartDtoResponse> getGlycemieHistory(String patientCode) {
        return consultationRepository.findAllConstanteVitaleHistory(patientCode)
                .stream()
                .filter(cv -> cv.getGlycemie() != null)
                .map(cv -> new ConstanteVitaleChartDtoResponse(cv.getSaveDate(), cv.getGlycemie()))
                .collect(Collectors.toList());
    }

    @Override
    public List<ConstanteVitaleChartDtoResponse> getBloodPressureHistory(String patientCode) {
        return consultationRepository.findAllConstanteVitaleHistory(patientCode)
                .stream()
                .filter(cv -> cv.getBlodPressure() != null)
                .map(cv -> new ConstanteVitaleChartDtoResponse(cv.getSaveDate(), cv.getBlodPressure()))
                .collect(Collectors.toList());
    }
}