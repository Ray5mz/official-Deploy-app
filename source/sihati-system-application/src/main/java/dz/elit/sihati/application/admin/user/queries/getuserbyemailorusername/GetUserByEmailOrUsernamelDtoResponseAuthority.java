package dz.elit.sihati.application.admin.user.queries.getuserbyemailorusername;

import lombok.*;
import org.springframework.security.core.GrantedAuthority;

@Getter
@Setter
@Data
@NoArgsConstructor
@AllArgsConstructor
public class GetUserByEmailOrUsernamelDtoResponseAuthority implements GrantedAuthority {

    private String id;
    private String authority;

}
