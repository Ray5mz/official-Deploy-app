package dz.elit.sihati.web.security.auth;

import dz.elit.sihati.utils.redis.RedisUtils;
import dz.elit.sihati.web.security.config.SecurityProperties;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class LoginAttemptService {


    @Autowired
    private     SecurityProperties securityProperties;
    @Autowired
    private HttpServletRequest request;

    public LoginAttemptService() {
        super();
    }

    public void loginFailed(final String key) {
        int attempts=0;
        try {
          Object  attemptskey =   RedisUtils.get("LOGIN-ATTEMPT", key);
          if(attemptskey!=null){
            attempts=Integer.valueOf(attemptskey.toString());
              RedisUtils.delete(key);
          }
        } catch ( Exception e) {
            attempts = 0;
        }
        attempts++;
        RedisUtils.set("LOGIN-ATTEMPT", key,""+attempts,securityProperties.getBockedInSecond());

        if(attempts >= securityProperties.getMaxAttempt()){


            RedisUtils.setNow("CAPTCHA", key);
        }

    }

    public boolean isBlocked(String user) {
        try {
            int attempts= 0;
            String key =getClientIP()/*+"-"+user*/;
            Object  attemptskey =   RedisUtils.get("LOGIN-ATTEMPT", key);
            if(attemptskey!=null){
                attempts=Integer.valueOf(attemptskey.toString());
            }
            return attempts >= securityProperties.getMaxAttempt();
        } catch (final Exception e) {
            return false;
        }
    }

    private String getClientIP() {
        final String xfHeader = request.getHeader("X-Forwarded-For");
        if (xfHeader != null) {
            return xfHeader.split(",")[0];
        }
        return request.getRemoteAddr();
    }
}