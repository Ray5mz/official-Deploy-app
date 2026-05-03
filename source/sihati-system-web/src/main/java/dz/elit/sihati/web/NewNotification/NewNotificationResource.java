package dz.elit.sihati.web.NewNotification;

import dz.elit.sihati.application.communs.NewNotification.CreateNewNotification.CreateNewNotificationDto;
import dz.elit.sihati.application.communs.NewNotification.CreateNewNotification.CreateNewNotificationDtoResponse;
import dz.elit.sihati.application.communs.NewNotification.GetByPatient.GetNewNotificationsByPatientCodeDtoResponse;
import dz.elit.sihati.application.communs.NewNotification.GetLatestOne.GetLatestNotificationDtoResponse;
import dz.elit.sihati.application.communs.NewNotification.GetNewNotification.GetNewNotificationDtoResponse;
import dz.elit.sihati.application.communs.NewNotification.MarkAsSeen.MarkAsSeenDtoResponse;
import jakarta.validation.Valid;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
import java.util.List;


@RestController
@RequestMapping(value = "/api/production/newnotification")
public interface NewNotificationResource {

    @GetMapping
    @PreAuthorize("permitAll()")
    List<GetNewNotificationDtoResponse> loadAll();

    @PostMapping("/create")
    @PreAuthorize("permitAll()")
    CreateNewNotificationDtoResponse createNewNotification(@Valid @RequestBody CreateNewNotificationDto dto, Principal principal);

    @PutMapping("/seen/{code}")
    @PreAuthorize("permitAll()")
    MarkAsSeenDtoResponse markAsSeen(@PathVariable String code, Principal principal);

    @GetMapping("/patient/{patientCode}")
    @PreAuthorize("permitAll()")
    List<GetNewNotificationsByPatientCodeDtoResponse> getNotificationsByPatientCode(@PathVariable String patientCode);
    @GetMapping("/latest-one/{patientCode}")
    @PreAuthorize("permitAll()")
    GetLatestNotificationDtoResponse getLatestNotification(@PathVariable String patientCode);
}
