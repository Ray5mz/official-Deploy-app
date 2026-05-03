package dz.elit.sihati.application.configuration.ping;

import org.springframework.stereotype.Component;

@Component
public class PingCordinatorImpl implements PingCordinator {

    @Override
    public String ping() {
        return "pong";
    }
}