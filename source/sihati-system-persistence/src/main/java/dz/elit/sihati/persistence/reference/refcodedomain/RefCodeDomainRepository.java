package dz.elit.sihati.persistence.reference.refcodedomain;

import dz.elit.sihati.domain.reference.RefCodeDomain;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;


public interface RefCodeDomainRepository extends JpaRepository<RefCodeDomain, Long> {



 @Transactional
 @Modifying
 @Query(value = "DELETE from RefCodeDomain r   where r.nomDomain = :domainName")
 int deleteByNomDomain(@Param("domainName") String domainName);


 Optional<RefCodeDomain> findRefCodeDomainByNomDomain( String nomDomain);

 @Query(value = "select r.nomDomain from  RefCodeDomain r  where r.id = :idDomain  order by r.id")
 String loadRefCodeDomainName (@Param("idDomain") Long idDomain);

 @Query(value = "select r.nomDomain from  RefCodeDomain r  where r.id = :idDomain  order by r.id")
 String loadNomDomainById(@Param("idDomain") Long idDomain);


}
