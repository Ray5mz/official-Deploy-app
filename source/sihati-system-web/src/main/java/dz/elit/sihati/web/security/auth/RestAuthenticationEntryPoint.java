package dz.elit.sihati.web.security.auth;

import com.fasterxml.jackson.databind.ObjectMapper;
import dz.elit.sihati.web.commons.apierrors.ApiError;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.server.ServerHttpResponse;
import org.springframework.http.server.ServletServerHttpResponse;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.AuthenticationEntryPoint;
import org.springframework.stereotype.Component;

import java.io.IOException;

@Component
public class RestAuthenticationEntryPoint implements AuthenticationEntryPoint {

    private final HttpMessageConverter<String> messageConverter;
    private final ObjectMapper mapper;
    @Autowired
    private LoginAttemptService loginAttemptService;
    public RestAuthenticationEntryPoint(HttpMessageConverter<String> messageConverter,
                                        ObjectMapper mapper) {
        this.messageConverter = messageConverter;
        this.mapper = mapper;
    }

    @Override
    public void commence(HttpServletRequest request,
                         HttpServletResponse response,
                         AuthenticationException authException) throws IOException {
        ApiError apiError = new ApiError(HttpStatus.UNAUTHORIZED);
        apiError.setMessage(authException.getMessage());
        apiError.setDebugMessage(authException.getMessage());

        final String xfHeader = request.getHeader("X-Forwarded-For");
        if (xfHeader == null || xfHeader.isEmpty() || !xfHeader.contains(request.getRemoteAddr())) {
            String blockedKey=request.getRemoteAddr()/*+"-"+authenticationToken.getPrincipal()*/;
            loginAttemptService.loginFailed(blockedKey);
        } else {
            String blockedKey=xfHeader.split(",")[0]/*+"-"+authenticationToken.getPrincipal()*/;
            loginAttemptService.loginFailed(blockedKey);
        }
        try (ServerHttpResponse outputMessage = new ServletServerHttpResponse(response)) {
            outputMessage.setStatusCode(HttpStatus.FORBIDDEN);

            messageConverter.write(mapper.writeValueAsString(apiError), MediaType.APPLICATION_JSON, outputMessage);
        }
    }
}