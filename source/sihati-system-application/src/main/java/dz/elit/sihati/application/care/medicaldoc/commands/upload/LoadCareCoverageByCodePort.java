package dz.elit.sihati.application.care.medicaldoc.commands.upload;

import dz.elit.sihati.domain.care.RequestCareCoverage;

import java.util.Optional;

public interface LoadCareCoverageByCodePort {
    Optional<RequestCareCoverage> findByCode(String code);
}