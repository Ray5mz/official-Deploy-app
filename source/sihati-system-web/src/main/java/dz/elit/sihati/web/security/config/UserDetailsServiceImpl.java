package dz.elit.sihati.web.security.config;

import dz.elit.sihati.application.admin.user.queries.getuser.GetUserDtoResponse;
import dz.elit.sihati.application.admin.user.queries.getuser.GetUserLoad;
import dz.elit.sihati.application.admin.user.queries.getuser.GetUserUseCase;
import dz.elit.sihati.application.admin.user.queries.getuserbycode.GetUserByCodeLoad;
import dz.elit.sihati.domain.admin.User;
import dz.elit.sihati.web.security.auth.LoginAttemptService;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

@Component("userDetailsService")
class UserDetailsServiceImpl implements UserDetailsService {

    @Autowired
    private HttpServletRequest httpRequest;

    @Autowired
    private GetUserUseCase getUserUseCase;

    @Autowired
    private GetUserLoad getUserLoad;

    @Autowired
    private GetUserByCodeLoad getUserByCodeLoad;

    @Autowired
    private LoginAttemptService loginAttemptService;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        if (loginAttemptService.isBlocked(username)) {
            return null;
        }
        try {
            // Load raw User to check passwordSourceCode
            User user = getUserLoad.findOneByUsername(username)
                    .orElseThrow(() -> new UsernameNotFoundException("User not found: " + username));

            // If passwordSourceCode is set, use parent's password instead
            String passwordSourceCode = user.getPasswordSourceCode();
            if (passwordSourceCode != null && !passwordSourceCode.isBlank()) {
                User parentUser = getUserByCodeLoad.findOneByCode(passwordSourceCode)
                        .orElse(null);
                if (parentUser != null) {
                    // Return the child user but with parent's password for auth
                    GetUserDtoResponse dto = getUserUseCase.execute(username);
                    dto.setPassword(parentUser.getPassword());
                    return dto;
                }
            }

            // Normal login — return DTO as usual
            return getUserUseCase.execute(username);

        } catch (Exception e) {
            loginAttemptService.loginFailed(getClientIP());
            throw new RuntimeException(e);
        }
    }

    private String getClientIP() {
        final String xfHeader = httpRequest.getHeader("X-Forwarded-For");
        if (xfHeader != null) {
            return xfHeader.split(",")[0];
        }
        return httpRequest.getRemoteAddr();
    }
}