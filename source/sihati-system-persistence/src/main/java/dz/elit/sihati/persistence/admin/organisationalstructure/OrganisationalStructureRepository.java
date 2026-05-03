package dz.elit.sihati.persistence.admin.organisationalstructure;

import dz.elit.sihati.domain.admin.OrganisationalStructure;
import dz.elit.sihati.domain.admin.StructureType;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;
import java.util.Set;

public interface OrganisationalStructureRepository extends JpaRepository<OrganisationalStructure, Long> {
    Optional<OrganisationalStructure> findByCode(String code);

   @Query("SELECT max(oganisational.code) FROM OrganisationalStructure oganisational WHERE oganisational.code like 'OR.%' " )
   Optional<String> findMaxCode();


    @Override
    List<OrganisationalStructure> findAll();

    @Query("SELECT oganisational FROM OrganisationalStructure oganisational where  (:unittype is null or oganisational.structureType = :unittype)" )
    List<OrganisationalStructure> loadAllOrganisationalStructures(   @Param("unittype") StructureType unittype);




    @Query("SELECT oganisational FROM OrganisationalStructure oganisational " +
            "WHERE oganisational.parentOrganisationalStructure.code = :code " )
    List<OrganisationalStructure> loadAllOrganisationalStructuresByParent(String code);






 @Query("SELECT oganisational FROM  OrganisationalStructure oganisational " +
         "WHERE oganisational.code in :units " )
 List<OrganisationalStructure> getUnitIn(List<String> units);

    @Query("SELECT oganisational FROM OrganisationalStructure oganisational " +
            "WHERE  oganisational.code in :organisationalStructureCodes " )
    Set<OrganisationalStructure> getOrganisationalStructures(Set<String> organisationalStructureCodes);

    @Query("SELECT oganisational FROM OrganisationalStructure oganisational left join oganisational.parentOrganisationalStructure orgparent " +
            "WHERE orgparent.id is null   " )
    List<OrganisationalStructure> loadAllOrganisationalStructuresNOParent();

    @Override
    OrganisationalStructure save(OrganisationalStructure unit);

    @Transactional
    @Modifying
    @Query(value = "UPDATE OrganisationalStructure SET deleted = true WHERE code IN ?1 AND deleted = false")
    int deleteOrganisationalStructureByCodeIn(List<String> units);

    boolean existsByCode(String code);


    @Query(value= 	"WITH RECURSIVE organ AS ( " +
            "SELECT org.id, org.code,  org.designation, org.parent_organisational_structure	FROM admin.organisational_structure org where org.code = :codeUnit   UNION " +
            "SELECT org.id, org.code,  org.designation, org.parent_organisational_structure FROM admin.organisational_structure org join organ on organ.id =org.parent_organisational_structure)" +
            " SELECT organ.id FROM organ ",
            nativeQuery = true)
    List<Long> findChildsOrganisationalStructureId(@Param("codeUnit")  String codeUnit);

    @Query(value= 	"WITH RECURSIVE organ AS ( " +
            "SELECT org.id, org.code,  org.designation, org.parent_organisational_structure	FROM admin.organisational_structure org where org.code = :codeUnit   UNION " +
            "SELECT org.id, org.code,  org.designation, org.parent_organisational_structure FROM admin.organisational_structure org join organ on organ.parent_organisational_structure =org.id)" +
            " SELECT organ.id FROM organ ",
            nativeQuery = true)
    List<Long> findParentsOrganisationalStructureId(@Param("codeUnit")  String codeUnit);




    @Transactional
    @Modifying
    @Query(value = "Update OrganisationalStructure u set u.enabled=true  where u.code = :code")
    void activerOrgStructure(@Param("code") String code);

    @Transactional
    @Modifying
    @Query(value = "Update OrganisationalStructure u set u.enabled=false  where u.code = :code")
    void desActiverOrgStructure(@Param("code") String code);


     @Query(value="SELECT u from OrganisationalStructure u where u.code=:code")
     Optional<OrganisationalStructure> get(String code);

    @Query(value= 	"WITH RECURSIVE organ AS ( " +
            "SELECT org.id, org.code,  org.designation, org.parent_organisational_structure	FROM admin.organisational_structure org where org.code = :codeUnit   UNION " +
            "SELECT org.id, org.code,  org.designation, org.parent_organisational_structure FROM admin.organisational_structure org join organ on organ.id =org.parent_organisational_structure)" +
            " SELECT organ.code FROM organ ",
            nativeQuery = true)
    List<String> findChildsOrganisationalStructureCode(@Param("codeUnit")  String codeUnit);


    @Query(value= 	"WITH RECURSIVE organ AS ( " +
            "SELECT org.id, org.code,  org.designation, org.parent_organisational_structure	FROM admin.organisational_structure org where org.code = :codeUnit   UNION " +
            "SELECT org.id, org.code,  org.designation, org.parent_organisational_structure FROM admin.organisational_structure org join organ on organ.id =org.parent_organisational_structure)" +
            " SELECT CONCAT(organ.code, CONCAT('(', CONCAT(organ.designation, ')')))FROM organ ",
            nativeQuery = true)
    List<String> findChildsOrganisationalStructureCodeDesignation(@Param("codeUnit")  String codeUnit);

  @Query(value = "select r from  OrganisationalStructure r  where  r.code = :code order by r.code")
  Optional<OrganisationalStructure> findOrganisationalStructureByCode(@Param("code") String code);



}
