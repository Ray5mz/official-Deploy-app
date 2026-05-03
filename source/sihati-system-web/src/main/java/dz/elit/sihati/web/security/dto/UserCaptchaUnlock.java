package dz.elit.sihati.web.security.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserCaptchaUnlock {
    private String username;
    private String value;
    private String key;
}
