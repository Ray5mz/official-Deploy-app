package dz.elit.sihati.application.care.RequestAppointment.commands.update;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UpdateRequestAppointmentDtoResponsePatient {

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
