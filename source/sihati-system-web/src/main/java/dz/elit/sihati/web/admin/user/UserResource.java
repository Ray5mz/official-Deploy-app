package dz.elit.sihati.web.admin.user;

import dz.elit.sihati.application.admin.user.queries.getuser.GetUserDtoResponse;
import dz.elit.sihati.application.admin.user.queries.getuserbycode.GetUserByCodeDtoResponse;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;

@RestController
@Validated
@RequestMapping(value = "/api/production")
public interface UserResource {

    @GetMapping(value = "/users/{userName}")
    @PreAuthorize("isAuthenticated()")
    GetUserDtoResponse getUser(@PathVariable String userName);

    @GetMapping(value = "/users/whoami")
    @PreAuthorize("isAuthenticated()")
    GetUserDtoResponse connectedUser(Principal principal);

    @GetMapping(value = "/users/code/{code}")
    @PreAuthorize("isAuthenticated()")
    GetUserByCodeDtoResponse getUserByCode(@PathVariable String code);

    @PutMapping(value = "/users/{code}/password-source")
    @PreAuthorize("isAuthenticated()")
    void updatePasswordSource(@PathVariable String code,
                              @RequestParam String passwordSourceCode);
}