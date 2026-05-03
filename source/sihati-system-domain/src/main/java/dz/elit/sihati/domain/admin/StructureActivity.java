package dz.elit.sihati.domain.admin;

import java.util.stream.Stream;

public enum StructureActivity {

    PRODUCTION("Production", 'P'),
    DISTRIBUTION("Distribution", 'D'),
    SEAT("Siège", 'S'),
    TRANSPORT("Transport", 'T'),
    SERVICE("Service", 'S'),
    WORKS("Travaux", 'W');

    private String value;
    private char code;

    StructureActivity(String value, char code) {
        this.value = value;
        this.code = code;
    }

    public String getValue() {
        return value;
    }

    public char getCode() {
        return code;
    }

    public static StructureActivity of(String value) {
        return Stream.of(StructureActivity.values())
                .filter(p -> p.getValue().equals(value))
                .findFirst()
                .orElseThrow(IllegalArgumentException::new);
    }
}
