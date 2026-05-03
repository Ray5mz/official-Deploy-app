package dz.elit.sihati.persistence.admin.user;

import dz.elit.sihati.application.admin.user.commands.updatepasswordsource.UpdatePasswordSourceLoad;
import dz.elit.sihati.application.admin.user.queries.getuser.GetUserLoad;
import dz.elit.sihati.application.admin.user.queries.getuserbycode.GetUserByCodeLoad;
import dz.elit.sihati.application.admin.user.queries.getuserbyemailorusername.GetUserByEmailOrUserNameLoad;
import dz.elit.sihati.application.admin.user.queries.ispasswordchange.IsPasswordChange;
import dz.elit.sihati.domain.admin.User;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;

import java.util.Optional;

@Component
@RequiredArgsConstructor
public class UserPersistenceAdapter implements
        GetUserLoad,
        GetUserByEmailOrUserNameLoad,
        GetUserByCodeLoad,
        IsPasswordChange,
        UpdatePasswordSourceLoad {

    private final UserRepository userRepository;

    @Override
    public Optional<User> findOneByUsername(String userName) {
        return userRepository.findOneByUsername(userName);
    }

    @Override
    public Optional<User> findUserByEmailOrUsername(String login) {
        return userRepository.findByEmailOrUserName(login);
    }

    @Override
    public Optional<User> findOneByCode(String code) {
        return userRepository.findOneByCode(code);
    }

    @Override
    public void updatePasswordSource(String code, String passwordSourceCode) {
        userRepository.updatePasswordSourceByCode(code, passwordSourceCode);
    }
}