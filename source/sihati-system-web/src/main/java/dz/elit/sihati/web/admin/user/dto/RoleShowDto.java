package dz.elit.sihati.web.admin.user.dto;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotEmpty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RoleShowDto {
    private String id;
    @NotBlank
    private String role;
    @NotBlank
    private String designation;
    private String creationDate;
    private String lastModifiedDate;
    @NotEmpty
    private List<@NotBlank String> authorities;
    private Boolean systemEntity;
}
