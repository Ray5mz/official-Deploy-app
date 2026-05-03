package dz.elit.sihati.application.reference.refcode.command.createrefcode;

import dz.elit.sihati.domain.reference.RefCode;

import java.util.List;
import java.util.Optional;

public interface CreateRefCode {

    RefCode save(RefCode refCode);
    Optional<RefCode> findRefCode(String code, String nomDomain);
    List<RefCode> findRefCodes(List<String> relatedRefCodeDtos);
}
