package dz.elit.sihati.web.care.dashboard;

import dz.elit.sihati.application.care.dashboard.DashboardStatsDtoResponse;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.security.Principal;

@RestController
@RequestMapping("/api/production/dashboard")
public interface DashboardResource {

    @GetMapping("/my-stats")
    @PreAuthorize("isAuthenticated()")
    DashboardStatsDtoResponse getMyStats(Principal principal);

    @GetMapping("/stats/{patientCode}")
    @PreAuthorize("isAuthenticated()")
    DashboardStatsDtoResponse getStatsByPatientCode(@PathVariable String patientCode);


}