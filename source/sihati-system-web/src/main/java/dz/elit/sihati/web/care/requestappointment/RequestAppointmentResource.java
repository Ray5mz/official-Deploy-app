package dz.elit.sihati.web.care.requestappointment;

import dz.elit.sihati.application.care.RequestAppointment.GetByPatientCode.GetRequestAppointmentByPatientCodeDtoResponse;
import dz.elit.sihati.application.care.RequestAppointment.commands.CancelRequestAppointment.CancelRequestAppointmentDtoResponse;
import dz.elit.sihati.application.care.RequestAppointment.commands.createrequestappointement.CreateRequestAppointmentDto;
import dz.elit.sihati.application.care.RequestAppointment.commands.createrequestappointement.CreateRequestAppointmentDtoResponse;
import dz.elit.sihati.application.care.RequestAppointment.commands.update.UpdateRequestAppointmentDto;
import dz.elit.sihati.application.care.RequestAppointment.commands.update.UpdateRequestAppointmentDtoResponse;
import dz.elit.sihati.application.care.RequestAppointment.get.GetRequestAppointmentDtoResponse;
import dz.elit.sihati.application.care.RequestAppointment.get.nearest.GetNearestRequestAppointmentDtoResponse;
import jakarta.validation.Valid;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
import java.util.List;

@RestController
@RequestMapping(value = "/api/production/requestappointment")
public interface RequestAppointmentResource {

    @RequestMapping
    List<GetRequestAppointmentDtoResponse> loadAll();


   @PutMapping(value = "/{appointmentNumber}")
   UpdateRequestAppointmentDtoResponse updateRequestAppointement(@PathVariable String appointmentNumber, @Valid  @RequestBody UpdateRequestAppointmentDto requestappointmentUpdateDto, Principal principa);


// @PostMapping(path = "/createappointment")
//  @PreAuthorize("hasAnyAuthority('consultation:create','consultation:*', '*:*')")
@PostMapping(path = "/createappointment")
@PreAuthorize("isAuthenticated()")
CreateRequestAppointmentDtoResponse createRequestAppointment(@Valid @RequestBody CreateRequestAppointmentDto createAppointmentsDto, Principal principal);

@GetMapping(path = "/by-patient/{patientCode}")
List<GetRequestAppointmentByPatientCodeDtoResponse> getRequestAppointmentsByPatientCode(@PathVariable String patientCode);

    @PutMapping(value = "/cancel/{appointmentNumber}")
    @PreAuthorize("isAuthenticated()")
    CancelRequestAppointmentDtoResponse cancelRequestAppointment(@PathVariable String appointmentNumber, Principal principal);

    @GetMapping("/nearest/{patientCode}")
    ResponseEntity<GetNearestRequestAppointmentDtoResponse> getNearestRequestAppointment(@PathVariable String patientCode);
}


