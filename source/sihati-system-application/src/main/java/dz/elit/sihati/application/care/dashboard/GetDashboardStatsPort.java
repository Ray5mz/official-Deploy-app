package dz.elit.sihati.application.care.dashboard;

public interface GetDashboardStatsPort {
    DashboardStatsDtoResponse getStatsByPatient(String patientCode);
}