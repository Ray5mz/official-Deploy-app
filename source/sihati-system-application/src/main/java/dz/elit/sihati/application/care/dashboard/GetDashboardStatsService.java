package dz.elit.sihati.application.care.dashboard;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class GetDashboardStatsService implements GetDashboardStatsUseCase {

    private final GetDashboardStatsPort getDashboardStatsPort;

    @Override
    public DashboardStatsDtoResponse execute(String patientCode) {
        return getDashboardStatsPort.getStatsByPatient(patientCode);
    }
}