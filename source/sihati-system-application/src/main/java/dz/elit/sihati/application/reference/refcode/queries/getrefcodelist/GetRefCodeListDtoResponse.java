package dz.elit.sihati.application.reference.refcode.queries.getrefcodelist;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class GetRefCodeListDtoResponse {


    private String refCodeDomain;
    private List<GetRefCodeListDtoResponseDetails>refCodes ;
}
