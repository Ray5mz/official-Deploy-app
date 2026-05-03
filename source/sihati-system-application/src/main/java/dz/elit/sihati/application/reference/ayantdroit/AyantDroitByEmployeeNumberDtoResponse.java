package dz.elit.sihati.application.reference.ayantdroit;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AyantDroitByEmployeeNumberDtoResponse {

    private String firstName;
    private String lastName;
    private String email;
    private String phoneNumber;
    private String employeeNumber;
    private String relation;
    private String code;
}