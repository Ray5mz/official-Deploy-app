package dz.elit.sihati.application.admin.user.queries.getuser;

import lombok.*;

import java.util.LinkedHashSet;
import java.util.Set;

@Getter
@Setter
@Data
@NoArgsConstructor
@AllArgsConstructor
public class GetUserDtoResponseRole {

    private String id;
    private String role;
    private String designation;
    private Set<GetUserDtoResponseAuthority> authorities = new LinkedHashSet<>();

}
