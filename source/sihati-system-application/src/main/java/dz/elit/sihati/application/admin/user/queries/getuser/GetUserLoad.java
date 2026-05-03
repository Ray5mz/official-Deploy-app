package dz.elit.sihati.application.admin.user.queries.getuser;

import dz.elit.sihati.domain.admin.User;

import java.util.Optional;

public interface GetUserLoad {
    Optional<User> findOneByUsername(String userName);
}
