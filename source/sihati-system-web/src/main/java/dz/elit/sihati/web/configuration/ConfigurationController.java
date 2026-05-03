package dz.elit.sihati.web.configuration;

import dz.elit.sihati.application.configuration.ping.PingUseCase;
import dz.elit.sihati.commons.WebAdapter;
import lombok.RequiredArgsConstructor;

@WebAdapter
@RequiredArgsConstructor
public class ConfigurationController implements ConfigurationRessource {
    private final PingUseCase pingUseCase;
    @Override
    public String getPing() {
        return pingUseCase.execute();
    }
}
