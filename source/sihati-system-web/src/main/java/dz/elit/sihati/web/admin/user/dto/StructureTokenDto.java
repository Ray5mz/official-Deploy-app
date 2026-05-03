package dz.elit.sihati.web.admin.user.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class StructureTokenDto {
    private String id;
    private String designation;
    private String type;
}
