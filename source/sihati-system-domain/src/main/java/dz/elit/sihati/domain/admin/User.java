package dz.elit.sihati.domain.admin;

import dz.elit.sihati.domain.commons.Auditing;
import jakarta.persistence.*;
import lombok.*;
import lombok.experimental.SuperBuilder;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.time.LocalDateTime;
import java.util.*;

@Entity
@Table(name = "user", schema = "admin", uniqueConstraints = {
        @UniqueConstraint(columnNames = {"username", "deleted", "deleted_date"})
})
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(callSuper = false, exclude = {"organisationalStructure"})
@Getter
@Setter
@SuperBuilder
@Inheritance(strategy = InheritanceType.JOINED)
public class User extends Auditing implements UserDetails {

    @Id
    @Column(name = "id", updatable = false, nullable = false)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "user_gen")
    @SequenceGenerator(name = "user_gen", sequenceName = "user_seq", schema = "admin", allocationSize = 1)
    private Long id;

    @Column(name = "code", nullable = false)
    private String code;

    @Column(name = "username", nullable = false)
    private String username;

    @Column(name = "password")
    private String password;

    @Column(name = "first_name")
    private String firstName;

    @Column(name = "last_name")
    private String lastName;

    @Column(name = "email")
    private String email;

    @Column(name = "phone_number")
    private String phoneNumber;

    @Column(name = "enabled")
    @Builder.Default
    private boolean enabled = true;

    @Column(name = "deleted")
    @Builder.Default
    private boolean deleted = false;

    @Column(name = "deleted_date", columnDefinition = "TIMESTAMP")
    @Builder.Default
    protected LocalDateTime deletedDate = LocalDateTime.of(0, 1, 1, 0, 0);

    @Column(name = "system_entity")
    @Builder.Default
    private Boolean systemEntity = false;

    @Column(name = "password_change")
    private boolean passwordChange;

    @Column(name = "disable_notification")
    private boolean disableNotification;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "organisational_structure_id")
    private OrganisationalStructure organisationalStructure;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "max_access_organisational_structure_id")
    private OrganisationalStructure maxAccessOrganisationalStructure;

    public boolean getDisableNotification() { return this.disableNotification; }

    @Override
    public boolean isAccountNonExpired() { return true; }

    @Override
    public boolean isAccountNonLocked() { return true; }

    @Override
    public boolean isCredentialsNonExpired() { return true; }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return new ArrayList<>();
    }
    @Column(name = "password_source_code")
    private String passwordSourceCode;


}