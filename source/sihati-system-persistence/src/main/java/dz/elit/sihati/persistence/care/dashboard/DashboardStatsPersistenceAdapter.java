package dz.elit.sihati.persistence.care.dashboard;

import dz.elit.sihati.application.care.dashboard.ConstanteVitaleChartDtoResponse;
import dz.elit.sihati.application.care.dashboard.DashboardStatsDtoResponse;
import dz.elit.sihati.application.care.dashboard.GetDashboardStatsPort;
import dz.elit.sihati.application.care.dashboard.LastConstanteVitaleDtoResponse;
import dz.elit.sihati.domain.care.ConstanteVitale;
import dz.elit.sihati.domain.care.enumeration.RequestCareCoverageStatus;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

@Component
@RequiredArgsConstructor
public class DashboardStatsPersistenceAdapter implements GetDashboardStatsPort {

    private final AppointmentStatsRepository appointmentRepo;
    private final CareCoverageStatsRepository careCoverageRepo;
    private final ConstanteVitaleStatsRepository constansteVitaleRepo;

    @Override
    public DashboardStatsDtoResponse getStatsByPatient(String patientCode) {

        // Fetch constante vitale history
        List<ConstanteVitale> vitales = constansteVitaleRepo.findByPatientCodeOrderByDateDesc(patientCode);

        LastConstanteVitaleDtoResponse lastVitale = null;
        if (!vitales.isEmpty()) {
            ConstanteVitale last = vitales.get(0);
            lastVitale = LastConstanteVitaleDtoResponse.builder()
                    .weight(BigDecimal.valueOf(last.getWeight() != null ? last.getWeight().doubleValue() : null))
                    .height(BigDecimal.valueOf(last.getHeight() != null ? last.getHeight().doubleValue() : null))
                    .glycemie(BigDecimal.valueOf(last.getGlycemie() != null ? last.getGlycemie().doubleValue() : null))
                    .blodPressure(BigDecimal.valueOf(last.getBlodPressure() != null ? last.getBlodPressure().doubleValue() : null))
                    .date(last.getSaveDate() != null ? LocalDateTime.parse(last.getSaveDate().toString()) : null)
                    .build();
        }

        // Build history (max 6 points, oldest first)
        List<ConstanteVitale> history = vitales.size() > 6
                ? vitales.subList(0, 6)
                : vitales;
        Collections.reverse(history);

        List<ConstanteVitaleChartDtoResponse> weightHistory = history.stream()
                .map(c -> ConstanteVitaleChartDtoResponse.builder()
                        .date(LocalDateTime.parse(c.getSaveDate() != null ? c.getSaveDate().toString() : ""))
                        .value(BigDecimal.valueOf(c.getWeight() != null ? c.getWeight().doubleValue() : 0.0))
                        .build())
                .collect(Collectors.toList());

        List<ConstanteVitaleChartDtoResponse> heightHistory = history.stream()
                .map(c -> ConstanteVitaleChartDtoResponse.builder()
                        .date(LocalDateTime.parse(c.getSaveDate() != null ? c.getSaveDate().toString() : ""))
                        .value(BigDecimal.valueOf(c.getHeight() != null ? c.getHeight().doubleValue() : 0.0))
                        .build())
                .collect(Collectors.toList());

        List<ConstanteVitaleChartDtoResponse> glycemieHistory = history.stream()
                .map(c -> ConstanteVitaleChartDtoResponse.builder()
                        .date(LocalDateTime.parse(c.getSaveDate() != null ? c.getSaveDate().toString() : ""))
                        .value(BigDecimal.valueOf(c.getGlycemie() != null ? c.getGlycemie().doubleValue() : 0.0))
                        .build())
                .collect(Collectors.toList());

        List<ConstanteVitaleChartDtoResponse> bloodPressureHistory = history.stream()
                .map(c -> ConstanteVitaleChartDtoResponse.builder()
                        .date(LocalDateTime.parse(c.getSaveDate() != null ? c.getSaveDate().toString() : ""))
                        .value(BigDecimal.valueOf(c.getBlodPressure() != null ? c.getBlodPressure().doubleValue() : 0.0))
                        .build())
                .collect(Collectors.toList());

        return DashboardStatsDtoResponse.builder()
                .totalAppointments(appointmentRepo.countByPatientCode(patientCode))
                .pendingAppointments(appointmentRepo.countByPatientCodeAndStatus(patientCode, "MIS_EN_ATTENTE"))
                .approvedAppointments(appointmentRepo.countByPatientCodeAndStatus(patientCode, "ACCEPTE"))
                .cancelledAppointments(appointmentRepo.countByPatientCodeAndStatus(patientCode, "ANNULE"))
                .refusedAppointments(appointmentRepo.countByPatientCodeAndStatus(patientCode, "REFUSE"))
                .totalCareCoverages(careCoverageRepo.countByPatientCode(patientCode))
                .pendingCareCoverages(careCoverageRepo.countByPatientCodeAndStatus(patientCode, RequestCareCoverageStatus.PENDING.name()))
                .approvedCareCoverages(careCoverageRepo.countByPatientCodeAndStatus(patientCode, RequestCareCoverageStatus.ACCEPTE.name()))
                .cancelledCareCoverages(careCoverageRepo.countByPatientCodeAndStatus(patientCode, RequestCareCoverageStatus.CANCELLED.name()))
                .refusedCareCoverages(careCoverageRepo.countByPatientCodeAndStatus(patientCode, RequestCareCoverageStatus.REFUSE.name()))
                .lastConstanteVitale(lastVitale)
                .weightHistory(weightHistory)
                .heightHistory(heightHistory)
                .glycemieHistory(glycemieHistory)
                .bloodPressureHistory(bloodPressureHistory)
                .build();
    }
}