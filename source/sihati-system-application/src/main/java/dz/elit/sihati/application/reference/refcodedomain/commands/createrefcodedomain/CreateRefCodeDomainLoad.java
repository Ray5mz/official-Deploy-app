package dz.elit.sihati.application.reference.refcodedomain.commands.createrefcodedomain;


import dz.elit.sihati.domain.reference.RefCodeDomain;

import java.util.Optional;

public interface CreateRefCodeDomainLoad {

    Optional<RefCodeDomain> findRefCodeDomain(String nomDomain);

}
