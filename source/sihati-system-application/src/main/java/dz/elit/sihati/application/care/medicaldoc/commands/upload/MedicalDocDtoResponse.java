package dz.elit.sihati.application.care.medicaldoc.commands.upload;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class MedicalDocDtoResponse {
    private Long id;
    private String code;
    private String libelle;
    private String extension;
    private String mimeType;
    private BigDecimal size;
    private String path;
}