package dz.elit.sihati.application.communs.NewNotification.MarkAsSeen;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MarkAsSeenDtoResponse {
    private String code;
    private Boolean seen;
}
