package dz.elit.sihati.application.reference.wilaya.queries.getwilayalist;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class GetWilayaListDtoResponse {
    private String id;
    private String code;
    private String designation; 
}
