package dz.elit.sihati.application.reference.specialty;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    public class GetSpecialtyDtoResponse {
        private String id;
        private String code;
        private String name;
        private String description;
        private String codeColor;
    }

