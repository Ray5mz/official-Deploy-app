package dz.elit.sihati.application.care.dashboard;

import java.util.List;

public interface GetLastConstanteVitalePort {
    LastConstanteVitaleDtoResponse getLastConstanteVitale(String patientCode);
    List<ConstanteVitaleChartDtoResponse> getWeightHistory(String patientCode);
    List<ConstanteVitaleChartDtoResponse> getHeightHistory(String patientCode);
    List<ConstanteVitaleChartDtoResponse> getGlycemieHistory(String patientCode);
    List<ConstanteVitaleChartDtoResponse> getBloodPressureHistory(String patientCode);}

