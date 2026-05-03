package dz.elit.sihati.web.security.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserTokenState {
    private String access_token;
    private Long expires_in;
    private boolean isPasswordChanged;
    private String key;
    private String module;
}
