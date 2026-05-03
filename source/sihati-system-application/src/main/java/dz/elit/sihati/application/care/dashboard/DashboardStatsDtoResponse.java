package dz.elit.sihati.application.care.dashboard;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class DashboardStatsDtoResponse {

    // Appointments
    private long totalAppointments;
    private long pendingAppointments;
    private long approvedAppointments;
    private long cancelledAppointments;
    private long refusedAppointments;
    // Care coverages
    private long totalCareCoverages;
    private long pendingCareCoverages;
    private long approvedCareCoverages;
    private long cancelledCareCoverages;
    private long refusedCareCoverages;
    // Last constante vitale
    private LastConstanteVitaleDtoResponse lastConstanteVitale;
    // History charts
    private List<ConstanteVitaleChartDtoResponse> weightHistory;
    private List<ConstanteVitaleChartDtoResponse> heightHistory;
    private List<ConstanteVitaleChartDtoResponse> glycemieHistory;
    private List<ConstanteVitaleChartDtoResponse> bloodPressureHistory;
}