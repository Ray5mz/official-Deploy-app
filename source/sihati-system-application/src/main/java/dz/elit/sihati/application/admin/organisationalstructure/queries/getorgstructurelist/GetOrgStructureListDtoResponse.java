package dz.elit.sihati.application.admin.organisationalstructure.queries.getorgstructurelist;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class GetOrgStructureListDtoResponse {
    private String id;
    private String code;
    private String address;
    private String designation;
    private String designationAr;
    private String phone;
    private String email;
    private String fax;
    private String communeCode;
    private boolean deleted ;
    private boolean enabled ;
    private String logo;
    private String structureType;

}
