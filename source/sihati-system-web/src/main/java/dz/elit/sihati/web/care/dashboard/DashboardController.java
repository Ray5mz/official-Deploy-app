package dz.elit.sihati.web.care.dashboard;

import dz.elit.sihati.application.admin.user.queries.getuser.GetUserDtoResponse;
import dz.elit.sihati.application.admin.user.queries.getuser.GetUserUseCase;
import dz.elit.sihati.application.care.dashboard.ConstanteVitaleService;
import dz.elit.sihati.application.care.dashboard.DashboardStatsDtoResponse;
import dz.elit.sihati.application.care.dashboard.GetDashboardStatsUseCase;
import dz.elit.sihati.commons.WebAdapter;
import dz.elit.sihati.web.commons.controller.BaseController;
import lombok.RequiredArgsConstructor;

import java.security.Principal;

@WebAdapter
@RequiredArgsConstructor
public class DashboardController extends BaseController implements DashboardResource {

    private final GetDashboardStatsUseCase getDashboardStatsUseCase;
    private final GetUserUseCase getUserUseCase;
    private final ConstanteVitaleService constanteVitaleService;

    @Override
    public DashboardStatsDtoResponse getMyStats(Principal principal) {

        GetUserDtoResponse user = getUserUseCase.execute(principal.getName());
        String patientCode = user.getCode();

        DashboardStatsDtoResponse stats = getDashboardStatsUseCase.execute(patientCode);

        stats.setLastConstanteVitale(
                constanteVitaleService.getLastConstanteVitale(patientCode)
        );
        stats.setWeightHistory(
                constanteVitaleService.getWeightHistory(patientCode)
        );
        stats.setHeightHistory(
                constanteVitaleService.getHeightHistory(patientCode)
        );
        stats.setGlycemieHistory(
                constanteVitaleService.getGlycemieHistory(patientCode)
        );
        stats.setBloodPressureHistory(
                constanteVitaleService.getBloodPressureHistory(patientCode)
        );

        return stats;
    }

    @Override
    public DashboardStatsDtoResponse getStatsByPatientCode(String patientCode) {
        DashboardStatsDtoResponse stats = getDashboardStatsUseCase.execute(patientCode);
        stats.setLastConstanteVitale(
                constanteVitaleService.getLastConstanteVitale(patientCode)
        );
        stats.setWeightHistory(
                constanteVitaleService.getWeightHistory(patientCode)
        );
        stats.setHeightHistory(
                constanteVitaleService.getHeightHistory(patientCode)
        );
        stats.setGlycemieHistory(
                constanteVitaleService.getGlycemieHistory(patientCode)
        );
        stats.setBloodPressureHistory(
                constanteVitaleService.getBloodPressureHistory(patientCode)
        );
        return stats;
    }



}