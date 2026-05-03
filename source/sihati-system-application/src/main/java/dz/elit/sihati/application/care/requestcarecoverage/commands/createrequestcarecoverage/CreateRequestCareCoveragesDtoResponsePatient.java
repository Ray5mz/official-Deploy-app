package dz.elit.sihati.application.care.requestcarecoverage.commands.createrequestcarecoverage;



import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CreateRequestCareCoveragesDtoResponsePatient {

    private String socialSecurityNumber;

    private String code;

    private String firstName;

    private String lastName;

    private LocalDate dateOfBirth;

    private String gender;

    private String bloodGroup;

    private String phone;

    private String email;

    private String address;
}
