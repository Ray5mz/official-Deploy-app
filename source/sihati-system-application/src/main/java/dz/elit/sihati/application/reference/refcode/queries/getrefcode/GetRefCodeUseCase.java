package dz.elit.sihati.application.reference.refcode.queries.getrefcode;

public interface GetRefCodeUseCase {
//    GetRefCodeDto execute(String code,String nomDomain);
    GetRefCodeDtoResponse execute(Long idDomain, Long id);
}
