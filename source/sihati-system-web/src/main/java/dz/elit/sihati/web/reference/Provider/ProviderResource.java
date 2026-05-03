package dz.elit.sihati.web.reference.Provider;

import dz.elit.sihati.application.reference.Provider.providerbycat.GetProviderBySpeDtoResponse;
import dz.elit.sihati.domain.reference.Provider;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(value = "/api/production")
public interface ProviderResource {

    @GetMapping(path = "/provider")
    List<Provider> getProviderList();

    @GetMapping("/provider/{code}")
    Provider getProviderByCode(@PathVariable String code);

    @GetMapping("/provider/category/{categoryCode}")
    List<GetProviderBySpeDtoResponse> getProvidersByCategoryCode(@PathVariable String categoryCode);
}