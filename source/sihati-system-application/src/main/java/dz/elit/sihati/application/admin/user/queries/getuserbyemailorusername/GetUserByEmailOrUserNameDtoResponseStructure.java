package dz.elit.sihati.application.admin.user.queries.getuserbyemailorusername;


import dz.elit.sihati.domain.commons.UserDtoStructureContext;
import lombok.*;

@Getter
@Setter
@Data
@NoArgsConstructor
@AllArgsConstructor
public class GetUserByEmailOrUserNameDtoResponseStructure implements UserDtoStructureContext {

    private long id;
    private String code;
    private String designation;
    private String type;
    private GetUserByEmailOrUserNameDtoResponseStructure parentStructure;
}
