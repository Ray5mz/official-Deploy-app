package dz.elit.sihati.application.reference.refcode.command.createrefcode;

import dz.elit.sihati.domain.reference.RefCodeDomain;

import java.util.Optional;

public interface CreateRefCodeLoadRefCodeDomain {
    Optional<RefCodeDomain> findRefCodeDomain(String nomDomain);
}
