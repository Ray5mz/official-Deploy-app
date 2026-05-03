package dz.elit.sihati.domain.communication;

import java.util.stream.Stream;

public enum NotificationLevel {
    INFO("info"), WARNING("warning"), DANGER("danger");

    private String value;

    NotificationLevel(String value) {
        this.value = value;
    }

    public String getValue() {
        return value;
    }

    public static NotificationLevel of(String value) {
        return Stream.of(NotificationLevel.values())
                .filter(p -> p.getValue().equals(value))
                .findFirst()
                .orElseThrow(IllegalArgumentException::new);
    }
}
