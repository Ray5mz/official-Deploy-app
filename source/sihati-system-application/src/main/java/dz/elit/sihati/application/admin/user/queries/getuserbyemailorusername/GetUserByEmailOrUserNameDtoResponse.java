package dz.elit.sihati.application.admin.user.queries.getuserbyemailorusername;

import com.fasterxml.jackson.annotation.JsonIgnore;
import dz.elit.sihati.application.admin.user.queries.getuser.GetUserDtoResponseStructure;
import dz.elit.sihati.domain.commons.UserContextDto;
import lombok.*;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Getter
@Setter
@Data
@NoArgsConstructor
@AllArgsConstructor
public class GetUserByEmailOrUserNameDtoResponse implements UserDetails, UserContextDto {
    private String id;
    private String username;
    private String firstName;
    private String lastName;
    @JsonIgnore
    private String password;
    private String email;
    private String phoneNumber;
    private boolean enabled;
    private boolean disableNotification;
    private boolean passwordChange;
    private GetUserDtoResponseStructure structure;
    private List<GetUserByEmailOrUserNameDtoResponseRole> roles;
    private List<GetUserByEmailOrUserNameDtoResponseDomain> domains;
    private String module;

    @Override
    public Set<GrantedAuthority> getAuthorities() {
        return new HashSet<>();
    }

       @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    public boolean getPasswordChange() {
         return this.passwordChange;
    }
    
}
