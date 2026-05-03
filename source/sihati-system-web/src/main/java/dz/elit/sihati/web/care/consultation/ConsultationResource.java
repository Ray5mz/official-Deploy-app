package dz.elit.sihati.web.care.consultation;


import dz.elit.sihati.application.care.consultation.queries.GetLastConsultation.GetLastConsultationDtoResponse;
import dz.elit.sihati.application.care.consultation.queries.getConsultationByPatientCode.GetConsultationByPatientDtoResponse;
import dz.elit.sihati.application.care.consultation.queries.getconsultation.GetConsultationDtoResponse;
import dz.elit.sihati.application.care.consultation.queries.getconsultationlist.GetConsultationListDtoResponse;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(value = "/api/production/consultations")
public interface ConsultationResource {

    @RequestMapping(method = RequestMethod.GET)
    @PreAuthorize("isAuthenticated()")
    public List<GetConsultationListDtoResponse> loadAll();

    @GetMapping(path = "/{consultationNumber}")
    @PreAuthorize("isAuthenticated()")
    GetConsultationDtoResponse getconsultation(
            @PathVariable String consultationNumber);
    @GetMapping("/patient/{patientCode}")
    @PreAuthorize("isAuthenticated()")
    List<GetConsultationByPatientDtoResponse> getConsultationsByPatientCode(
            @PathVariable String patientCode);
    @GetMapping("/patient/last/{patientCode}")
    GetLastConsultationDtoResponse getLastConsultationByPatientCode(@PathVariable String patientCode);
}
