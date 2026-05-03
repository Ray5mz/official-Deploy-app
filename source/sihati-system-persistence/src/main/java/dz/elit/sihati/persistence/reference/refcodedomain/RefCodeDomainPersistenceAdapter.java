package dz.elit.sihati.persistence.reference.refcodedomain;



import dz.elit.sihati.application.reference.refcode.command.createrefcode.CreateRefCodeLoadRefCodeDomain;
import dz.elit.sihati.application.reference.refcode.queries.getrefcodelist.GetNomDomain;
import dz.elit.sihati.application.reference.refcode.queries.getrefcodelist.GetRefCodeListLoadDomain;
import dz.elit.sihati.application.reference.refcodedomain.commands.createrefcodedomain.CreateRefCodeDomain;
import dz.elit.sihati.application.reference.refcodedomain.commands.createrefcodedomain.CreateRefCodeDomainLoad;
import dz.elit.sihati.application.reference.refcodedomain.commands.deleterefcodedomain.DeleteRefCodeDomain;
import dz.elit.sihati.application.reference.refcodedomain.commands.updaterefcodedomain.UpdateRefCodeDomain;
import dz.elit.sihati.application.reference.refcodedomain.commands.updaterefcodedomain.UpdateRefCodeDomainLoad;
import dz.elit.sihati.application.reference.refcodedomain.queries.getdomainrefcodelist.getdomainrefcodelist.GetDomainRefCodeListLoad;
import dz.elit.sihati.domain.reference.RefCodeDomain;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Optional;


@Component
@RequiredArgsConstructor
public class RefCodeDomainPersistenceAdapter implements CreateRefCodeLoadRefCodeDomain,   DeleteRefCodeDomain , UpdateRefCodeDomain , UpdateRefCodeDomainLoad , CreateRefCodeDomainLoad, GetDomainRefCodeListLoad , CreateRefCodeDomain, GetRefCodeListLoadDomain, GetNomDomain
 {

    private final RefCodeDomainRepository refCodeDomainRepository;


    @Override
    public List<RefCodeDomain> getRefCodeDomains() {
        return refCodeDomainRepository.findAll();
    }

    @Override
    public long deleteRefCodeDomain(String nomDomain) {
        return refCodeDomainRepository.deleteByNomDomain(nomDomain);
    }

    @Override
    public RefCodeDomain save(RefCodeDomain refCodeDomain) {
        return refCodeDomainRepository.save(refCodeDomain);
    }

    @Override
    public Optional<RefCodeDomain> findRefCodeDomain(String nomDomain) {
        if(nomDomain==null) return Optional.empty();
        if(nomDomain.isEmpty()) return Optional.empty();
        return refCodeDomainRepository.findRefCodeDomainByNomDomain(nomDomain);
    }


    @Override
    public String getRefCodeListDomainName(Long idDomain) {
        return  refCodeDomainRepository.loadRefCodeDomainName(idDomain);
    }

    @Override
    public String getNomDomainByIdDomain(Long idDomain) {
        return refCodeDomainRepository.loadNomDomainById(idDomain);
    }
}
