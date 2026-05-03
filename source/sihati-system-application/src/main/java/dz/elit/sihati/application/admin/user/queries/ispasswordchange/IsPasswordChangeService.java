package dz.elit.sihati.application.admin.user.queries.ispasswordchange;

import dz.elit.sihati.domain.admin.User;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import serilogj.Log;

@Service
@RequiredArgsConstructor
class IsPasswordChangeService implements IsPasswordChangeUseCase {

    private final IsPasswordChange changePassword;

    private PasswordEncoder passwordEncoder;

    @Value("${app.security.default-password}")
    private String defaultPassword;

    @Override
    public boolean execute(String userName) {

        Log.debug("Is Password Change for user {username}", userName);

        User user = changePassword
                .findOneByUsername(userName)
                .orElseThrow(() -> new UsernameNotFoundException(
                String.format("No user found with username '%s'.", userName)));

        return !passwordEncoder.matches(defaultPassword, user.getPassword());

    }
}
