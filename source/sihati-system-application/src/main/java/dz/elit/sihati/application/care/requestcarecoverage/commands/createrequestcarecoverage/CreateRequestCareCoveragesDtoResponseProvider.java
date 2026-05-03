package dz.elit.sihati.application.care.requestcarecoverage.commands.createrequestcarecoverage;



import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CreateRequestCareCoveragesDtoResponseProvider {

    private String code;

    private String name;

    private String phone;

    private String email;

    private String address;

    private String category;
}
