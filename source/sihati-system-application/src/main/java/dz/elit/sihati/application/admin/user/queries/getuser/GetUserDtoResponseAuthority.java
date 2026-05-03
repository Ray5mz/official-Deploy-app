package dz.elit.sihati.application.admin.user.queries.getuser;

import lombok.*;
import org.springframework.security.core.GrantedAuthority;

@Getter
@Setter
@Data
@NoArgsConstructor
@AllArgsConstructor
public class GetUserDtoResponseAuthority implements GrantedAuthority {

    private String id;
    private String authority;

}
