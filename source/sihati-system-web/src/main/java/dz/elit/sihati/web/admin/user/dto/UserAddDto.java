package dz.elit.sihati.web.admin.user.dto;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserAddDto {
    @NotBlank
    private String firstName;
    @NotBlank
    private String lastName;

    @Email
    @NotBlank
    private String email;
    @NotBlank
    private String phoneNumber;
    @NotNull
    private boolean enabled;
    private String structure;
    @NotEmpty
    private List<@NotBlank String> roles;
}
