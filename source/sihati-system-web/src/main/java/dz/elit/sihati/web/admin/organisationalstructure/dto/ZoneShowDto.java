package dz.elit.sihati.web.admin.organisationalstructure.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ZoneShowDto {
    private String id;
    private String code;
    private String address;
    private String designation;
    private UserDto headOfTheStructure;
    private String phone;
    private String email;
    private Double latitude;
    private Double longitude;

    private String businessRegisterNumber;
    private String fax;
    private String bankOfDomiciliation;
    private String rib;
    private String rip;
    private String taxIdNumber;
    private String taxIdentificationNumber;
    private String thirdPartyCode;
}
