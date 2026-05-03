package dz.elit.sihati.application.admin.user.queries.ispasswordchange;

import dz.elit.sihati.domain.admin.User;
import lombok.RequiredArgsConstructor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
class IsPasswordChangeService implements IsPasswordChangeUseCase {

    private static final Logger log = LoggerFactory.getLogger(IsPasswordChangeService.class);

    private final IsPasswordChange changePassword;
    private PasswordEncoder passwordEncoder;

    @Value("${app.security.default-password}")
    private String defaultPassword;

    @Override
    public boolean execute(String userName) {
        log.debug("Is Password Change for user {}", userName);

        User user = changePassword
                .findOneByUsername(userName)
                .orElseThrow(() -> new UsernameNotFoundException(
                        String.format("No user found with username '%s'.", userName)));

        return !passwordEncoder.matches(defaultPassword, user.getPassword());
    }
}