package dz.elit.sihati.domain.commons;

import dz.elit.sihati.domain.admin.OrganisationalStructure;
import jakarta.persistence.*;
import lombok.*;
import lombok.experimental.SuperBuilder;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

@EqualsAndHashCode(callSuper = false)
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@SuperBuilder
@MappedSuperclass


public abstract class Visibility extends Auditing {

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_owner_structure", referencedColumnName = "id", insertable = false, updatable = false)
    private OrganisationalStructure ownerStructure;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_creator_structure", referencedColumnName = "id", insertable = false, updatable = false)
    private OrganisationalStructure creatorStructure;

    @Column(name = "id_owner_structure")
    private Long ownerStructureId;

    @Column(name = "id_creator_structure")
    private Long creatorStructureId;

    @Column(name = "is_shared")
    private boolean isShared;



    @PrePersist
    private void prePersist() {
        Long structureId = 7L;
        Authentication authenticator = SecurityContextHolder.getContext().getAuthentication();
        structureId =authenticator!=null?( (UserContextDto) authenticator.getPrincipal()).getStructure().getId():7;

        this.setCreatorStructureId(Long.valueOf(structureId));
        this.setOwnerStructureId(Long.valueOf(structureId));
        this.setShared(false);

    }


}
