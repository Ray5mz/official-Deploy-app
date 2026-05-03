package dz.elit.sihati.web.security.controller;

import dz.elit.sihati.web.security.auth.JwtAuthenticationRequest;
import dz.elit.sihati.web.security.dto.UserCaptcha;
import dz.elit.sihati.web.security.dto.UserCaptchaUnlock;
import dz.elit.sihati.web.security.dto.UserTokenState;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;

@RestController
@RequestMapping(value = "")
public interface AuthenticationResource {

    @PostMapping(value = "/api/production/auth/login")
    public ResponseEntity<?> generateToken(@RequestBody JwtAuthenticationRequest authenticationRequest,
                                           HttpServletRequest request,
                                           HttpServletResponse response);

    @PostMapping(value = "/api/production/auth/logout")
    @PreAuthorize("isAuthenticated()")
    public boolean logout(Principal principal);

    @PostMapping(value = "/api/production/auth/captcha")
    public UserCaptcha captcha();

    @PostMapping(value = "/api/production/auth/captcha/unlock")
    public boolean captchaUnlock(@RequestBody UserCaptchaUnlock unlock, HttpServletRequest request);

    @GetMapping(value = "/api/production/auth/test")
    public String test(HttpServletRequest request);

    @GetMapping(value = "/auth/test")
    public String test2(HttpServletRequest request);

    @PostMapping(value = "/api/production/auth/refresh-token")
    @PreAuthorize("isAuthenticated()")
    public UserTokenState refreshToken(HttpServletRequest request, Principal principal);
}