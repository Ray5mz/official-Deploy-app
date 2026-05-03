package dz.elit.sihati.application.care.pathologie;

import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
public class GetPathologieDtoResponse {
    private Long id;
    private String nom;
    private String severite;
}