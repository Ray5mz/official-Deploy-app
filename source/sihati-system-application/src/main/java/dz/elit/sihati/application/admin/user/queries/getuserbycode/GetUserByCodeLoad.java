package dz.elit.sihati.application.admin.user.queries.getuserbycode;

import dz.elit.sihati.domain.admin.User;
import java.util.Optional;

public interface GetUserByCodeLoad {
    Optional<User> findOneByCode(String code);
}