package dz.elit.sihati.web.security.auth;

import com.fasterxml.jackson.databind.ObjectMapper;
import dz.elit.sihati.application.admin.user.queries.getuser.GetUserUseCase;
import dz.elit.sihati.utils.redis.RedisUtils;
import dz.elit.sihati.web.commons.apierrors.ApiError;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.http.HttpStatus;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.server.ServerHttpResponse;
import org.springframework.http.server.ServletServerHttpResponse;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.web.filter.OncePerRequestFilter;

import java.io.IOException;
import java.util.Optional;

public class TokenAuthenticationFilter extends OncePerRequestFilter {


    private TokenHelper tokenHelper;
    private UserDetailsService userDetailsService;
    private  ObjectMapper mapper;
    private HttpMessageConverter<String> messageConverter;
    private GetUserUseCase getUserUseCase;


    public TokenAuthenticationFilter(TokenHelper tokenHelper, UserDetailsService userDetailsService) {
        this.tokenHelper = tokenHelper;
        this.userDetailsService = userDetailsService;
    }

    @Override
    public void doFilterInternal(HttpServletRequest request, HttpServletResponse response,
                                 FilterChain chain) throws IOException, ServletException {

        Optional<String> username;
        Optional<String> authToken = tokenHelper.getToken(request);
        ApiError apiError = new ApiError(HttpStatus.FORBIDDEN);
        ServerHttpResponse outputMessage = new ServletServerHttpResponse(response);
        outputMessage.setStatusCode(HttpStatus.OK);

        if (authToken.isPresent()) {
            String token = authToken.get();
            Object object = RedisUtils.get("BLOCKED", token);
            if(object!=null)
                token="gggggggg";
            username = tokenHelper.getUsernameFromToken(token);


            if (username.isPresent()) {
                UserDetails userDetails = userDetailsService.loadUserByUsername(username.get());
                if(userDetails!=null)
                    if (tokenHelper.isValidToken(token, userDetails)) {
                        TokenBasedAuthentication authentication = new TokenBasedAuthentication(userDetails);
                        authentication.setToken(token);
                        SecurityContextHolder.getContext().setAuthentication(authentication);
                        request.setAttribute("user",username);
                    }
                    else {
                        outputMessage.setStatusCode(HttpStatus.FORBIDDEN);
                    }
            }
        }
        chain.doFilter(request, response);
    }

}
