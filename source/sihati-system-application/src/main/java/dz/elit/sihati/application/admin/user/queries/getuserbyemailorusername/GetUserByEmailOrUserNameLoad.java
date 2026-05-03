package dz.elit.sihati.application.admin.user.queries.getuserbyemailorusername;

import dz.elit.sihati.domain.admin.User;

import java.util.Optional;

public interface GetUserByEmailOrUserNameLoad {
    Optional<User> findUserByEmailOrUsername(String email);
}
