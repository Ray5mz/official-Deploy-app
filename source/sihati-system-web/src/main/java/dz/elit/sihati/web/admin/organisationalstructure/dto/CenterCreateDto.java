package dz.elit.sihati.web.admin.organisationalstructure.dto;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Pattern;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author gueffaf
 * @version 1.0
 * @created 8/19/2018
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class CenterCreateDto {
    @Pattern(regexp="^[a-zA-Z0-9]{2}",message="length must be 2")
    @NotBlank
    private String code;
    @NotBlank
    private String address;
    @NotNull
    private Double latitude;
    @NotNull
    private Double longitude;
    @NotBlank
    private String designation;
    @NotBlank
    private String phone;
    @Email
    @NotBlank
    private String email;

    @NotBlank
    private String businessRegisterNumber;
    @NotBlank
    private String fax;
    @NotBlank
    private String bankOfDomiciliation;
    @NotBlank
    private String rib;
    @NotBlank
    private String rip;
    @NotBlank
    private String taxIdNumber;
    @NotBlank
    private String taxIdentificationNumber;
    @NotBlank
    private String thirdPartyCode;
}
