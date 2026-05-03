package dz.elit.sihati.persistence.admin.user;

import dz.elit.sihati.domain.admin.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Long> {

    Optional<User> findOneByUsername(String username);

    @Query(value = "select u from User u where u.username = ?1 or u.email = ?1")
    Optional<User> findByEmailOrUserName(String login);

    @Query("SELECT u FROM User u WHERE u.code = :code AND u.deleted = false")
    Optional<User> findOneByCode(@Param("code") String code);

    @Modifying
    @Transactional
    @Query("UPDATE User u SET u.passwordSourceCode = :passwordSourceCode WHERE u.code = :code")
    void updatePasswordSourceByCode(@Param("code") String code,
                                    @Param("passwordSourceCode") String passwordSourceCode);
}