package dz.elit.sihati.application.reference.refcode.queries.getrefcodelist;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class GetRefCodeListDtoResponseDetails {


    private Long id;
    private String code;
    private String designation;
}
