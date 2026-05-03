package dz.elit.sihati.web.care.timingdoctor;


import dz.elit.sihati.application.care.TimingDoctor.queries.getbyhealthpro.GetTimingDocByHealthProDtoResponse;
import dz.elit.sihati.application.care.TimingDoctor.queries.getlistbyspe.GetDoctorTimingSpeDtoResponse;
import dz.elit.sihati.domain.care.TimingDoctor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(value = "/api/production/timingdoctor")

public interface TimingDoctorResource {

    @GetMapping
    public List<TimingDoctor> loadAll();


    @GetMapping("/{codeSpecialty}")
    List<GetDoctorTimingSpeDtoResponse> getTimingDoctorByspeciality(@PathVariable String codeSpecialty);

    @GetMapping("/healthprof/{id}")
    List<GetTimingDocByHealthProDtoResponse> getTimingDoctorByHealthProf(@PathVariable Long id);
}
