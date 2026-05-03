package dz.elit.sihati.application.admin.user.queries.getuserbyemailorusername;

import dz.elit.sihati.application.admin.user.queries.getuser.GetUserDtoResponseAuthority;
import lombok.*;

import java.util.LinkedHashSet;
import java.util.Set;

@Getter
@Setter
@Data
@NoArgsConstructor
@AllArgsConstructor
public class GetUserByEmailOrUserNameDtoResponseRole {

    private String id;
    private String role;
    private String designation;
    private Set<GetUserDtoResponseAuthority> authorities = new LinkedHashSet<>();

}
