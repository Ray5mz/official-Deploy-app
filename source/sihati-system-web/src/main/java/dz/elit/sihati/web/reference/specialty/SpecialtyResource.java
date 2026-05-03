package dz.elit.sihati.web.reference.specialty;

import dz.elit.sihati.application.reference.specialty.GetSpecialtyDtoResponse;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(value = "/api/production/specialties")
public interface SpecialtyResource {

    @GetMapping
    List<GetSpecialtyDtoResponse> loadAll();
}
