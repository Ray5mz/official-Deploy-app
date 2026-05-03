package dz.elit.sihati.web.security.config;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.boot.context.properties.ConfigurationProperties;

@ConfigurationProperties(prefix = "app-security")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class SecurityProperties {

    private String appName;
    private String secret;
    private String authHeader;
    private long expiresInSeconds;
    private long maxAttempt;
    private Integer bockedInSecond;
    private long refreshedTimeLapseSeconds;
    private String ipDomain;
    private String portDomain;

    private  String pathKeyPublic;

    private String pathKeyPrivate;
}
