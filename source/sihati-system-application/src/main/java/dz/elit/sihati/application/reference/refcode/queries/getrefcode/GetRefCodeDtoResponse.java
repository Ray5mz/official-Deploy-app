package dz.elit.sihati.application.reference.refcode.queries.getrefcode;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class GetRefCodeDtoResponse {
    private String idDomain ;
    private String nomDomain;
    private Long id;
    private String code;
    private String designation;
}
