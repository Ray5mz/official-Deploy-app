package dz.elit.sihati.web.care.pathologie;

import dz.elit.sihati.application.care.pathologie.GetPathologieDtoResponse;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@RequestMapping("api/production/patient/{codePatient}/pathologies")
public interface GetPathologieResource {
    @GetMapping
    List<GetPathologieDtoResponse> getByCodePatient(@PathVariable String codePatient);
}
