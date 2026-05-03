package dz.elit.sihati.application.reference.patient.queries;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class GetPatientByCodeDtoResponse {
    private String code;
    private String socialSecurityNumber;
    private String bloodGroup;
    private String employeeNumber;

}
