package dz.elit.sihati.persistence.reference.refcode;

import dz.elit.sihati.application.reference.refcode.command.createrefcode.CreateRefCode;
import dz.elit.sihati.application.reference.refcode.command.deleterefcode.DeleteRefCode;
import dz.elit.sihati.application.reference.refcode.command.updaterefcode.UpdateRefCode;
import dz.elit.sihati.application.reference.refcode.queries.getrefcode.GetRefCodeLoad;
import dz.elit.sihati.application.reference.refcode.queries.getrefcodelist.GetRefCodeListLoad;
import dz.elit.sihati.domain.reference.RefCode;
import dz.elit.sihati.persistence.reference.refcodedomain.RefCodeDomainRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Optional;

@Component
@RequiredArgsConstructor
public class RefCodePersistenceAdapter implements
        GetRefCodeListLoad, GetRefCodeLoad, UpdateRefCode, DeleteRefCode, CreateRefCode
{
    private final RefCodeRepository refCodeRepository;

    private final RefCodeDomainRepository refCodeDomainRepository;


    @Override
    public RefCode save(RefCode refCode) {
        return refCodeRepository.save(refCode);
    }

    @Override
    public long deleteRefCode(String code, String nomDomain) {
      Optional<RefCode>   refCode = this.findRefCode(code,nomDomain);

        if(refCode.isPresent())        refCodeRepository.delete(refCodeRepository.getOne(refCode.get().getId()));
        return 0;
    }







    @Override
    public Optional<RefCode> findRefCode(String code, String nomDomain) {
        return refCodeRepository.loadRefCodeByDomainByCode(nomDomain,code);
    }

     @Override
     public Optional<RefCode> findRefCodeById(Long idDomain, Long id) {
         return refCodeRepository.loadRefCodeByIdDomainById(idDomain,id);

     }


     @Override
    public List<RefCode> findRefCodes(List<String> relatedRefCodeDtos) {

        return refCodeRepository.findRefCodesc(relatedRefCodeDtos);

    }




    @Override
   // @Visibility
    public List<RefCode> getRefCodeList(Long idDomain) {

        return refCodeRepository.loadRefCodeByDomain(idDomain);
    }





}
