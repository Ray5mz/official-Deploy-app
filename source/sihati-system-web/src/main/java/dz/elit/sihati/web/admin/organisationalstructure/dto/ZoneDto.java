package dz.elit.sihati.web.admin.organisationalstructure.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ZoneDto {

    private String id;
    private String code;
    private String address;
    private Double latitude;
    private Double longitude;
    private String designation;
    private String headOfTheStructure;
    private String phone;
    private String email;
}
