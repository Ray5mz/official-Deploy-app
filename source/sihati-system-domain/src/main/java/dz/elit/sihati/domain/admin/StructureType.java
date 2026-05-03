package dz.elit.sihati.domain.admin;

import java.util.stream.Stream;

/**
 * @author gueffaf
 * @version 1.0
 * @created 25-avr.-2018 11:14:46
 */
public enum StructureType {
    UNIT("Unité"),
    FILIALE("Filiale"),
    REGION("REGION"),
    POLE("Pôle"),
    DG("Direction générale"),
    DC("Direction Centrale"),
    DIR("Direction"),
    BRUTE("Brute"),
    AUTRE("AUTRE"),
    SIEGE("SIEGE"),
    REGION_SIEGE("REGION_SIEGE"),
    FILIALE_SIEGE("FILIALE_SIEGE"),
    MC("Medical Center"),
    POLE_SIEGE("Pôle SIEGE");

    private String value;

    StructureType(String value) {
        this.value = value;
    }

    public String getValue() {
        return value;
    }

    public static StructureType of(String value) {
        return Stream.of(StructureType.values())
                .filter(p -> p.getValue().equals(value))
                .findFirst()
                .orElseThrow(IllegalArgumentException::new);
    }
}
