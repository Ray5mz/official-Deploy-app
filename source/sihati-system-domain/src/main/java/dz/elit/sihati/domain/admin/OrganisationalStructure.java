package dz.elit.sihati.domain.admin;

import dz.elit.sihati.domain.commons.Auditing;
import dz.elit.sihati.domain.reference.Commune;
import jakarta.persistence.*;
import lombok.*;
import lombok.experimental.SuperBuilder;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/**
 * @author gueffaf
 * @version 1.0
 * @created 7/22/2018
 */

@Entity
@Table(name = "organisational_structure", schema = "admin",
        uniqueConstraints = {
               // @UniqueConstraint(name = "head_of_the_structure_id_constrainte", columnNames = {"head_of_the_structure_id"}),
                @UniqueConstraint(columnNames = {"code", "deleted", "deleted_date"})})
//@Inheritance(strategy = InheritanceType.SINGLE_TABLE)
//@DiscriminatorColumn(name = "structure_type")
@Getter
@Setter
@EqualsAndHashCode(exclude = { "users",  "wilaya"}, callSuper = false)
@NoArgsConstructor
@AllArgsConstructor
@SuperBuilder
public  class OrganisationalStructure extends Auditing implements Serializable {

    @Id
    @Column
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "organisational_structure_gen")
    @SequenceGenerator(name = "organisational_structure_gen", sequenceName = "organisational_structure_seq",
            schema = "admin", allocationSize = 1)
    protected Long id;

    @Column(name = "code")
    protected String code;

    @Column(name = "designation")
    protected String designation;

    @Column(name = "designation_ar")
    protected String designationAr;

    @Column(name = "logo")
    protected String logo;

    @Column(name = "phone")
    protected String phone;

    @Column(name = "email")
    protected String email;

    @Column(name = "address")
    protected String address;

    @Column(name = "latitude")
    private Double latitude;

    @Column(name = "longitude")
    private Double longitude;

    @Column(name = "enabled")
    @Builder.Default
    protected boolean enabled = true;

    @Column(name = "has_data")
    @Builder.Default
    protected boolean hasData = true;

    @Column(name = "fax")
    protected String fax;

    @Column(name = "deleted")
    @Builder.Default
    protected boolean deleted = false;

    @Column(name = "deleted_date", columnDefinition = "TIMESTAMP")
    @Builder.Default
    protected LocalDateTime deletedDate = LocalDateTime.of(0, 1, 1, 0, 0);

    //@Column(name = "structure_type", insertable = false, updatable = false)
    @Column(name = "structure_type")
    @Enumerated(EnumType.STRING)
    protected StructureType structureType;

    @OneToMany(mappedBy = "organisationalStructure", cascade = CascadeType.ALL)
    @Builder.Default
    protected List<User> users = new ArrayList<>();

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "parent_organisational_structure")
    private OrganisationalStructure parentOrganisationalStructure;

    @OneToMany(mappedBy = "parentOrganisationalStructure", cascade = CascadeType.ALL)
    @Builder.Default
    protected List<OrganisationalStructure> organisationalStructures = new ArrayList<>();

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "commune_id")
    private Commune commune;

    public void addUser(User user) {
        users.add(user);
        user.setOrganisationalStructure(this);
    }

    public void removeUser(User user) {
        users.remove(user);
        user.setOrganisationalStructure(null);
    }




    public List<OrganisationalStructure> ParentsOrganisationalStructures() {
        List<OrganisationalStructure> parent = new ArrayList<>();
        recursively(parent , this);
        return  parent;

    }
    public List<OrganisationalStructure> ChildesOrganisationalStructures(){
        List<OrganisationalStructure> org =new ArrayList<>();
        recursivelyForChild(org,this);
        return org ;
    }

    private void recursivelyForChild(List<OrganisationalStructure> structures,OrganisationalStructure org){
        if (org.getOrganisationalStructures() != null && !org.getOrganisationalStructures().isEmpty()){
            structures.addAll(org.getOrganisationalStructures());
            org.getOrganisationalStructures().stream().forEach( s ->recursivelyForChild(structures , s));

        }

    }
    private void recursively(List<OrganisationalStructure> parent , OrganisationalStructure org) {
        if (org.getParentOrganisationalStructure() != null){
            parent.add(org.getParentOrganisationalStructure());
            recursively(parent ,org.getParentOrganisationalStructure());
        }
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        if (!super.equals(o)) return false;
        OrganisationalStructure that = (OrganisationalStructure) o;
        return code.equals(that.code)  ;
    }

    @Override
    public int hashCode() {
        return Objects.hash(super.hashCode(), id, code);
    }
}
