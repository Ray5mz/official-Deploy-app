package dz.elit.sihati.application.admin.organisationalstructure.queries.getorgstructurebyparentlist;

import lombok.*;

@Data
@NoArgsConstructor
@Getter
@Setter
@AllArgsConstructor
@Builder
public class GetOrgStructureByParentListDtoResponse {
  private String id;
  private String code;
  private String address;
  private String designation;
  private String designationAr;
  private String phone;
  private String email;
  private String fax;
  private String wilayaCode;
  private boolean deleted ;
  private String logo;
 }
