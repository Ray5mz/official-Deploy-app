package dz.elit.sihati.application.admin.user.queries.getuserbycode;

import dz.elit.sihati.application.admin.user.queries.getuser.GetUserDtoResponseDomain;
import dz.elit.sihati.application.admin.user.queries.getuser.GetUserDtoResponseRole;
import dz.elit.sihati.application.admin.user.queries.getuser.GetUserDtoResponseStructure;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class GetUserByCodeDtoResponse {
    private String id;
    private String username;
    private String firstName;
    private String lastName;
    private String email;
    private String phoneNumber;
    private boolean enabled;
    private boolean disableNotification;
    private boolean passwordChange;
    private GetUserDtoResponseStructure structure;
    private GetUserDtoResponseStructure structureAccess;
    private List<GetUserDtoResponseRole> roles;
    private List<GetUserDtoResponseDomain> domains;
    private String module;
    private Integer year;
    private Integer semester;
    private Integer trimester;
    private Integer month;
    private Integer defaultYear;
    private Integer defaultSemester;
    private Integer defaultTrimester;
    private Integer defaultMonth;
}
