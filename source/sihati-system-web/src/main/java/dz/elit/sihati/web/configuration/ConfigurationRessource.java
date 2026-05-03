package dz.elit.sihati.web.configuration;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/api/production/configuration")
public interface ConfigurationRessource {

    @GetMapping(path = "ping")
    String getPing();
}
