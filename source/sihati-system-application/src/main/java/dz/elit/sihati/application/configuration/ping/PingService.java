package dz.elit.sihati.application.configuration.ping;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class PingService implements PingUseCase{
    private final PingCordinator pingCordinator;


    @Override
    public String execute() {
        return pingCordinator.ping();
    }
}
