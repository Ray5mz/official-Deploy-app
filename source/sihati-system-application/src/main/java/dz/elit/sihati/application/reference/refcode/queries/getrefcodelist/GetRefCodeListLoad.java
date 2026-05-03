package dz.elit.sihati.application.reference.refcode.queries.getrefcodelist;

import dz.elit.sihati.domain.reference.RefCode;

import java.util.List;

public interface GetRefCodeListLoad {
    List<RefCode> getRefCodeList(Long idDomain);
}
