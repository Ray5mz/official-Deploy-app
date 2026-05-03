package dz.elit.sihati.application.reference.refcode.command.updaterefcode;

import dz.elit.sihati.domain.reference.RefCode;

import java.util.List;
import java.util.Optional;

public interface UpdateRefCode {

    RefCode save(RefCode RefCode);

    Optional<RefCode> findRefCode(String code, String nomDomain);
    List<RefCode> findRefCodes(List<String> relatedRefCodeDtos);
}
