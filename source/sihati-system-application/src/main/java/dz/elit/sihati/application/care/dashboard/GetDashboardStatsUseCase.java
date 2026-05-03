package dz.elit.sihati.application.care.dashboard;

public interface GetDashboardStatsUseCase {
    DashboardStatsDtoResponse execute(String patientCode);
}