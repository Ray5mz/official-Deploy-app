package dz.elit.sihati.application.care.requestcarecoverage.commands.updaterequestcarecoverage;


import dz.elit.sihati.domain.care.RequestCareCoverage;

import java.util.Optional;

public interface UpdateRequestCareCoverage {
    Optional<RequestCareCoverage> findRequestCareCoverageByCode(String code);

    RequestCareCoverage save(RequestCareCoverage requestCareCoverage);
}

