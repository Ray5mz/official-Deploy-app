package dz.elit.sihati.application.care.dashboard;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ConstanteVitaleService {

    private final GetLastConstanteVitalePort port;

    public LastConstanteVitaleDtoResponse getLastConstanteVitale(String patientCode) {
        return port.getLastConstanteVitale(patientCode);
    }

    public List<ConstanteVitaleChartDtoResponse> getWeightHistory(String patientCode) {
        return port.getWeightHistory(patientCode);
    }

    public List<ConstanteVitaleChartDtoResponse> getHeightHistory(String patientCode) {
        return port.getHeightHistory(patientCode);
    }

    public List<ConstanteVitaleChartDtoResponse> getGlycemieHistory(String patientCode) {
        return port.getGlycemieHistory(patientCode);
    }

    public List<ConstanteVitaleChartDtoResponse> getBloodPressureHistory(String patientCode) {
        return port.getBloodPressureHistory(patientCode);
    }


}