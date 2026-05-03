package dz.elit.sihati.application.admin.organisationalstructure.queries.getorgstructurebyparentalllist;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class GetOrgStructureAllListDtoResponse {
    private String id;
    private String name;
    private String nameAr;
    private String imageUrl;
    private String parentId;

}
