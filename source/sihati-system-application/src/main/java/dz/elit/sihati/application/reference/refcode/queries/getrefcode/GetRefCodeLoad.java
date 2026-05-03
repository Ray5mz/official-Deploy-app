package dz.elit.sihati.application.reference.refcode.queries.getrefcode;

import dz.elit.sihati.domain.reference.RefCode;

import java.util.Optional;

public interface GetRefCodeLoad {
    Optional<RefCode> findRefCode(String code, String nomDomain);

    Optional<RefCode> findRefCodeById(Long idDomain, Long id);
}
