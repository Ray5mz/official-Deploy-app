package dz.elit.sihati.application.reference.wilaya.queries.getwilaya;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class GetWilayaDtoResponse {
    private String code;
    private String designation; 
}
