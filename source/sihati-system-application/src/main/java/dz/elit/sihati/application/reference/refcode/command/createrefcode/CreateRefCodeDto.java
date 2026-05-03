package dz.elit.sihati.application.reference.refcode.command.createrefcode;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor

public class CreateRefCodeDto {

    private String nomDomain;
    private String code;
    private String designation;
}
