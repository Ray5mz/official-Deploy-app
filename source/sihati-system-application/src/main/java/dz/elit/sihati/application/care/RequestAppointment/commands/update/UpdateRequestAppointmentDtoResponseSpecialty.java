package dz.elit.sihati.application.care.RequestAppointment.commands.update;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UpdateRequestAppointmentDtoResponseSpecialty {
    private String code;

    private String name;

    private String codeColor;

    private String description;
}
