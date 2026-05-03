package dz.elit.sihati.application.reference.refcode.command.updaterefcode;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UpdateRefCodeDtoResponse {

    private String nomDomain;
    private String code;
    private String designation;
}
