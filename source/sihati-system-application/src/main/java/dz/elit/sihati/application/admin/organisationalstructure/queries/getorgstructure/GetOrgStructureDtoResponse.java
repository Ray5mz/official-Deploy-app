package dz.elit.sihati.application.admin.organisationalstructure.queries.getorgstructure;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class GetOrgStructureDtoResponse {

    private String id;
    private String code;
    private String address;
    private String designation;
    private String designationAr;
    private String phone;
    private String email;
    private String fax;
    private String logo;
    private boolean deleted ;
    private GetOrgStructureDtoResponseCommune wilaya;
    private GetOrgStructureDtoResponse parent;

}
