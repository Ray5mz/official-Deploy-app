package dz.elit.sihati.persistence.reference.refcode;

import dz.elit.sihati.domain.reference.RefCode;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

public interface RefCodeRepository extends JpaRepository<RefCode, Long> {



 @Query(value = "select r from  RefCode r  where r.refCodeDomain.id = :idDomain  order by r.id")
 List<RefCode> loadRefCodeByDomain (@Param("idDomain") Long idDomain);


 @Query(value = "select r from  RefCode r  where r.refCodeDomain.nomDomain = :domainName  and  r.code = :code  order by r.id")
 Optional<RefCode> loadRefCodeByDomainByCode (@Param("domainName") String domainName,@Param("code") String code);


 @Query(value = "select r from  RefCode r  where r.idDomain = :idDomain  and  r.id = :id order by r.id")
 Optional<RefCode> loadRefCodeByIdDomainById (@Param("idDomain") Long idDomain,@Param("id") Long id);
// @Query(value = "select r from  RefCode r  where r.refCodeDomain.nomDomain = :nomDomain  and  r.code = :code  order by r.id")
// Optional<RefCode> loadCodeIsShared (@Param("nomDomain") String nomDomain,@Param("code") String code);


 @Transactional
 @Modifying
 @Query(value = "DELETE from RefCode r   where r.refCodeDomain.nomDomain = :domainName  and  r.code = :code ")
 int deleteRefCode(@Param("domainName") String domainName,@Param("code") String code);

 @Query("select r from  RefCode r  where r.code = :code ")
  Optional<RefCode> findByCode(@Param("code")  String code);




 @Query("select r from RefCode  r join RefCodeDomain rcd on r.idDomain = rcd.id where concat(rcd.nomDomain,'-', r.code) IN(:relatedRefCodeDtos)")
 List<RefCode> findRefCodesc(@Param("relatedRefCodeDtos")  List<String> relatedRefCodeDtos);
}
