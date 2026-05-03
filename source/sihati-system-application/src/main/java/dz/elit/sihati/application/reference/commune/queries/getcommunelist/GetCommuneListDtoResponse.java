package dz.elit.sihati.application.reference.commune.queries.getcommunelist;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class GetCommuneListDtoResponse {

    private String id;
    private String code;
    private String designation;
    private String wilaya;

}
