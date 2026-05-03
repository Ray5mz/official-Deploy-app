package dz.elit.sihati.application.care.requestcarecoverage.commands.cancelrequestcarecoverage;

import dz.elit.sihati.domain.care.RequestCareCoverage;

import java.util.Optional;

public interface CancelRequestCareCoverageLoad {

    Optional<RequestCareCoverage> findRequestCareCoverageByCode(String code);

}