package dz.elit.sihati.web.reference.commune;

import dz.elit.sihati.application.reference.commune.queries.getcommunelist.GetCommuneListDtoResponse;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(value = "/api/production")
public interface CommuneResource {

    @GetMapping(path = "/commune")
    List<GetCommuneListDtoResponse> getCommuneList();
}
