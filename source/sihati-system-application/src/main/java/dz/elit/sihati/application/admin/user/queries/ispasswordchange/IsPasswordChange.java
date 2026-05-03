package dz.elit.sihati.application.admin.user.queries.ispasswordchange;

import dz.elit.sihati.domain.admin.User;

import java.util.Optional;

public interface IsPasswordChange {

    Optional<User> findOneByUsername(String userName);
}
