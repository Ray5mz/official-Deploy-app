package dz.elit.sihati.application.reference.refcodedomain.queries.getdomainrefcodelist.getdomainrefcodelist;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class GetDomainRefCodeListDtoResponse {
    private Long id;
    private String nomDomain;
    private String designation;
}
