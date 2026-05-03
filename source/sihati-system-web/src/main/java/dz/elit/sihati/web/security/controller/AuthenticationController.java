package dz.elit.sihati.web.security.controller;

import cn.apiclub.captcha.Captcha;
import dz.elit.sihati.application.admin.user.queries.getuser.GetUserDtoResponse;
import dz.elit.sihati.application.admin.user.queries.getuser.GetUserUseCase;
import dz.elit.sihati.commons.WebAdapter;
import dz.elit.sihati.domain.exceptions.CookieMessageException;
import dz.elit.sihati.domain.exceptions.TokenNotRefreshableException;
import dz.elit.sihati.domain.exceptions.UserNotAuthorizedException;
import dz.elit.sihati.utils.captcha.CaptchaUtil;
import dz.elit.sihati.utils.redis.RedisUtils;
import dz.elit.sihati.utils.user.UserUtilsComponent;
import dz.elit.sihati.web.admin.user.dto.StructureTokenDto;
import dz.elit.sihati.web.commons.controller.BaseController;
import dz.elit.sihati.web.security.auth.JwtAuthenticationRequest;
import dz.elit.sihati.web.security.auth.TokenBasedAuthentication;
import dz.elit.sihati.web.security.auth.TokenHelper;
import dz.elit.sihati.web.security.config.SecurityProperties;
import dz.elit.sihati.web.security.dto.UserCaptcha;
import dz.elit.sihati.web.security.dto.UserCaptchaUnlock;
import dz.elit.sihati.web.security.dto.UserTokenState;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

import java.security.Principal;
import java.util.ArrayList;
import java.util.Optional;
import java.util.UUID;

@WebAdapter
@RequiredArgsConstructor
public class AuthenticationController extends BaseController implements AuthenticationResource {

    private final TokenHelper tokenHelper;
    private final AuthenticationManager authenticationManager;
    private final SecurityProperties securityProperties;
    private final GetUserUseCase getUserUseCase;
    private final UserUtilsComponent userUtilsComponent;

    private String getClientIP(HttpServletRequest request) {
        final String xfHeader = request.getHeader("X-Forwarded-For");
        if (xfHeader != null) return xfHeader.split(",")[0];
        return request.getRemoteAddr();
    }

    private boolean isMobileClient(HttpServletRequest request) {
        String userAgent = request.getHeader("User-Agent");
        if (userAgent == null) return false;
        String ua = userAgent.toLowerCase();
        return ua.contains("dart") || ua.contains("okhttp") || ua.contains("flutter");
    }

    @Override
    public ResponseEntity<?> generateToken(JwtAuthenticationRequest authenticationRequest,
                                           HttpServletRequest request,
                                           HttpServletResponse response) {
        String ip = getClientIP(request);
        boolean mobile = isMobileClient(request);

        int attempts = 0;
        Object attemptskey = RedisUtils.get("LOGIN-ATTEMPT", ip);
        if (attemptskey != null) {
            attempts = Integer.valueOf(attemptskey.toString());
        }
        if (attempts >= securityProperties.getMaxAttempt()) {
            if (!mobile) {
                response.setHeader(HttpHeaders.SET_COOKIE, tokenHelper.removeResponseCookie("CAPTCHA", "FALSE").toString());
                response.addHeader(HttpHeaders.SET_COOKIE, tokenHelper.removeResponseCookie("TOKEN", "").toString());
                response.addHeader(HttpHeaders.SET_COOKIE, tokenHelper.generateResponseCookie("BLOCKED", "TRUE").toString());
                throw new CookieMessageException("BLOCKED");
            }
        }

        Object captcha = RedisUtils.get("CAPTCHA", ip);
        if (captcha != null) {
            if (!mobile) {
                response.setHeader(HttpHeaders.SET_COOKIE, tokenHelper.removeResponseCookie("TOKEN", "").toString());
                response.addHeader(HttpHeaders.SET_COOKIE, tokenHelper.removeResponseCookie("BLOCKED", "FALSE").toString());
                response.addHeader(HttpHeaders.SET_COOKIE, tokenHelper.generateResponseCookie("CAPTCHA", "TRUE").toString());
                throw new CookieMessageException("CAPTCHA");
            }
        }

        final Authentication authentication = authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(
                        authenticationRequest.getUsername(),
                        authenticationRequest.getPassword()));
        SecurityContextHolder.getContext().setAuthentication(authentication);

        GetUserDtoResponse user = (GetUserDtoResponse) authentication.getPrincipal();
        boolean isPasswordChanged = user.getPasswordChange();

        String jws = tokenHelper.generateToken(
                user.getUsername(),
                new ArrayList<>(),
                new ArrayList<>(),
                new StructureTokenDto(null, null, null),
                isPasswordChanged,
                user.getFirstName() + " " + user.getLastName(),
                user.getEmail());

        long expiresIn = tokenHelper.getExpiredIn();

        Object object = RedisUtils.get("LOGIN", user.getUsername());
        if (object != null) {
            RedisUtils.delete(user.getUsername());
            RedisUtils.setNow("BLOCKED", object.toString());
        }
        RedisUtils.set("LOGIN", user.getUsername(), jws);

        if (isPasswordChanged) {
            response.setHeader(HttpHeaders.SET_COOKIE, tokenHelper.removeResponseCookie("BLOCKED", "FALSE").toString());
            response.addHeader(HttpHeaders.SET_COOKIE, tokenHelper.removeResponseCookie("CAPTCHA", "FALSE").toString());
            response.addHeader(HttpHeaders.SET_COOKIE, tokenHelper.generateResponseCookie("TOKEN", jws).toString());
        } else {
            jws = "";
            response.setHeader(HttpHeaders.SET_COOKIE, tokenHelper.removeResponseCookie("BLOCKED", "FALSE").toString());
            response.addHeader(HttpHeaders.SET_COOKIE, tokenHelper.removeResponseCookie("CAPTCHA", "FALSE").toString());
            response.addHeader(HttpHeaders.SET_COOKIE, tokenHelper.removeResponseCookie("TOKEN", jws).toString());
        }

        return ResponseEntity.ok(new UserTokenState(jws, expiresIn, isPasswordChanged, "", user.getModule()));
    }

    @Override
    public boolean logout(Principal principal) {
        TokenBasedAuthentication authentication = (TokenBasedAuthentication) principal;
        RedisUtils.setNow("BLOCKED", authentication.getToken());
        return true;
    }

    @Override
    public UserCaptcha captcha() {
        Captcha captcha = CaptchaUtil.createCaptcha(150, 80);
        String key = UUID.randomUUID().toString();
        String image = CaptchaUtil.encodeCaptcha(captcha);
        String answer = captcha.getAnswer();
        RedisUtils.set("CAPTCHA-IMAGE", key, answer);
        return new UserCaptcha(image, key);
    }

    @Override
    public boolean captchaUnlock(UserCaptchaUnlock unlock, HttpServletRequest request) {
        Object o = RedisUtils.get("CAPTCHA-IMAGE", unlock.getKey());
        if (o != null) {
            String image = o.toString();
            if (image.equalsIgnoreCase(unlock.getValue())) {
                RedisUtils.set("CAPTCHA-IMAGE", unlock.getKey(), "", 1);
                String ip = getClientIP(request);
                RedisUtils.set("CAPTCHA", ip, "", 1);
                return true;
            }
        }
        return false;
    }

    @Override
    public UserTokenState refreshToken(HttpServletRequest request, Principal principal) {
        Optional<String> authToken = tokenHelper.getToken(request);

        if (!authToken.isPresent()) {
            throw new UserNotAuthorizedException("Full authentication is required to access this resource");
        }
        if (!tokenHelper.isTokenRefreshable(authToken.get())) {
            throw new TokenNotRefreshableException(
                    String.format("Token not acceptable for refresh {Token %s}", authToken.get()));
        }

        String refreshedToken = tokenHelper.generateRefreshToken(authToken.get());
        long expiresIn = tokenHelper.getExpiredIn();
        GetUserDtoResponse userDtoResponse = getUserUseCase.execute(principal.getName());
        boolean isPasswordChange = userDtoResponse.getPasswordChange();

        return new UserTokenState(refreshedToken, expiresIn, isPasswordChange, "", userDtoResponse.getModule());
    }

    @Override
    public String test(HttpServletRequest request) {
        return request.getRequestURL().toString() + "?" + request.getQueryString();
    }

    @Override
    public String test2(HttpServletRequest request) {
        return request.getRequestURL().toString() + "?" + request.getQueryString();
    }
}