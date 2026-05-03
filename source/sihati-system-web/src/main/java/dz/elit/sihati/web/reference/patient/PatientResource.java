package dz.elit.sihati.web.reference.patient;

import dz.elit.sihati.application.reference.patient.queries.GetPatientByCodeDtoResponse;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/api/production/patient")
public interface PatientResource {


    @GetMapping(value = "/{code}")
    GetPatientByCodeDtoResponse getPatientByCode(@PathVariable String code);


   // @GetMapping(path = "/{code}")
   // Patient getPatientByCode(@PathVariable String code);
}