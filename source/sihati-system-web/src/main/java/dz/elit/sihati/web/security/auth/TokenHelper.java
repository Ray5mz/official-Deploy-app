package dz.elit.sihati.web.security.auth;

import dz.elit.sihati.web.admin.user.dto.StructureTokenDto;
import dz.elit.sihati.web.security.config.SecurityProperties;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.ExpiredJwtException;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.http.ResponseCookie;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;
import serilogj.Log;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.security.KeyFactory;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.time.Duration;
import java.util.*;
import java.util.stream.Collectors;

@Component
public class TokenHelper {

    private static final String AUDIENCE = "web";
    private SignatureAlgorithm signatureAlgorithm = SignatureAlgorithm.RS256;
    private SecurityProperties securityProperties;

    public TokenHelper(SecurityProperties securityProperties) {
        this.securityProperties = securityProperties;
    }

    public Optional<String> getUsernameFromToken(String token) {
        String username = null;
        try {
            final Optional<Claims> claims = getAllClaimsFromToken(token);
            if (claims.isPresent()) {
                username = claims.get().getSubject();
            }
        } catch (Exception e) {
            Log.error("getUsernameFromToken : {@token}, {@exception}", token, e.getMessage());
        }

        return Optional.ofNullable(username);
    }

    public Optional<String> getOrganisationelStructureFromToken(String token) {
        String structure = null;
        try {
            final Optional<Claims> claims = getAllClaimsFromToken(token);
            if (claims.isPresent()) {
                structure = ((LinkedHashMap) claims.get().get("structure")).get("id").toString();
            }
        } catch (Exception e) {
            Log.error("getUsernameFromToken : {@token}, {@exception}", token, e.getMessage());
        }

        return Optional.ofNullable(structure);
    }

    public List<String> getRolesFromToken(String token) {
        List<String> roles = new ArrayList<>();
        try {
            final Optional<Claims> claims = getAllClaimsFromToken(token);
            if (claims.isPresent()) {
                roles = (List<String>) claims.get().get("roles");
            }
        } catch (Exception e) {
            Log.error("getUsernameFromToken : {@token}, {@exception}", token, e.getMessage());
        }

        return roles;
    }

    public Date getIssuedAtDateFromToken(String token) {
        Date issueAt = null;
        try {
            final Optional<Claims> claims = getAllClaimsFromToken(token);
            if (claims.isPresent()) {
                issueAt = claims.get().getIssuedAt();
            }
        } catch (Exception e) {
            Log.error("getIssuedAtDateFromToken : {@token}, {@exception}",
                    token, e.getMessage());
        }

        return issueAt;
    }

    public String generateRefreshToken(String token) {
        String refreshedToken = null;
        Date a = new Date();
        try {
            final Optional<Claims> claimsOp = getAllClaimsFromToken(token);
            if (claimsOp.isPresent()) {
                Claims claims = claimsOp.get();
                claims.setIssuedAt(a);
                refreshedToken = Jwts.builder()
                        .setClaims(claims)
                        .setExpiration(generateExpirationDate())
                        .signWith(signatureAlgorithm, securityProperties.getSecret())
                        .compact();
            }
        } catch (Exception e) {
            Log.error("refreshToken : {@token}, {@exception}", token,
                    e.getMessage());
        }

        return refreshedToken;
    }

    public String generateToken(String username, List<String> perms,
                                List<String> roles,
                                StructureTokenDto structureTokenDto,
                                boolean isPasswordChanged,
                                String fullName,
                                String email) {
        Path pathPrivate = Paths.get(securityProperties.getPathKeyPrivate());


        String token = Jwts.builder()
                .setId(UUID.randomUUID().toString())
                .setIssuer(securityProperties.getAppName())
                .setSubject(username)
                .setAudience(AUDIENCE)
                .setIssuedAt(new Date())
                .setExpiration(generateExpirationDate())
                .claim("passwordChanged", isPasswordChanged)
                .claim("perms", perms)
                .claim("roles", roles)
                .claim("fullName", fullName)
                .claim("email", email)
                .claim("avatar", "assets/images/avatars/profile.jpg")
                .claim("structure", structureTokenDto)
                .signWith(signatureAlgorithm,  readPrivateKey(pathPrivate.toFile()))
                .compact();

        /*redisTemplate.opsForHash().put("tokens", username, token);
        Object tokens = redisTemplate.opsForHash().get("tokens", username);
        Log.information("tokens {token}", tokens.toString());*/

        return token;
    }

    private Optional<Claims> getAllClaimsFromToken(String token) {
        Claims claims = null;
        try {

             Path pathPublic = Paths.get(securityProperties.getPathKeyPublic());
            claims = Jwts.parser()
                    .setSigningKey(readPublicKey(pathPublic.toFile()))
                    .parseClaimsJws(token)
                    .getBody();
        } catch (ExpiredJwtException e) {
            claims = e.getClaims();
        } catch (Exception e) {
            Log.error("getAllClaimsFromToken : {@token}, {@exception}", token, e.getMessage());
        }

        return Optional.ofNullable(claims);
    }

    private Date generateExpirationDate() {
        return new Date(new Date().getTime() + securityProperties.getExpiresInSeconds() * 1000);
    }

    public Boolean isValidToken(String token, UserDetails userDetails) {
        final Optional<Claims> claims = getAllClaimsFromToken(token);

        if (!claims.isPresent()) return false;

        String username = claims.get().getSubject();

        return userDetails.getUsername().equals(username)
                && userDetails.isEnabled()
                && !isTokenExpired(claims.get());
    }

    public boolean isTokenExpired(String token) {
        boolean isExpired = false;
        try {
            final Optional<Claims> claims = getAllClaimsFromToken(token);
            isExpired = !claims.isPresent() || claims.get().getExpiration().before(new Date());
        } catch (Exception e) {
            Log.error("isTokenExpired : {@token}, {@exception}", token,
                    e.getMessage());
        }

        return isExpired;
    }

    public boolean isTokenExpired(Claims claims) {
        return claims.getExpiration().before(new Date());
    }

    public boolean isTokenRefreshable(String token) {
        Optional<Claims> claims = getAllClaimsFromToken(token);

        if (!claims.isPresent()) return false;

        long currentTime = new Date().getTime();
        long expiryTime = claims.get().getExpiration().getTime();

        return (currentTime > expiryTime) && (currentTime < (expiryTime + (securityProperties.getRefreshedTimeLapseSeconds() * 1000)));
    }

    public Optional<String> getToken(HttpServletRequest request) {

        Optional<String> token= Optional.empty();


        if(request.getCookies() != null){
        try {
            token = Optional.of(Arrays.stream(request.getCookies()).filter(cookie -> cookie.getName().equals("TOKEN")).collect(Collectors.toList()).get(0).getValue());
        }catch (Exception e ){

        } }


if(!token.isPresent()) {
    String authHeader = getAuthHeaderFromHeader(request);
    if (authHeader != null && authHeader.startsWith("Bearer ")) {
        token= Optional.of(authHeader.substring(7));
    }
}
  return  token;
}


    public String getAuthHeaderFromHeader(HttpServletRequest request) {
        return request.getHeader(securityProperties.getAuthHeader());
    }

    public long getExpiredIn() {
        return securityProperties.getExpiresInSeconds();
    }
    public static RSAPublicKey readPublicKey(File file)  {
        try {   String key = new String(Files.readAllBytes(file.toPath()));


            String publicKeyPEM = key
                    .replace("-----BEGIN-PUBLIC-KEY-----", "")
                    .replaceAll("\\s+", "")
                    .replace("-----END-PUBLIC-KEY-----", "");
            byte[] encoded = Base64.getDecoder().decode(publicKeyPEM);

        KeyFactory keyFactory = KeyFactory.getInstance("RSA");
        X509EncodedKeySpec keySpec = new X509EncodedKeySpec(encoded);
        return (RSAPublicKey) keyFactory.generatePublic(keySpec);
    }catch (Exception e) {}

        return null;
    }
    public  static RSAPrivateKey readPrivateKey(File file)  {
        try {



        String key = new String(Files.readAllBytes(file.toPath()));

        String privateKeyPEM = key
                .replace("-----BEGIN-PRIVATE-KEY-----", "")
                .replaceAll("\\s+", "")
                .replace("-----END-PRIVATE-KEY-----", "");
             byte[] encoded = Base64.getDecoder().decode(privateKeyPEM);
        KeyFactory keyFactory = KeyFactory.getInstance("RSA");
        PKCS8EncodedKeySpec keySpec = new PKCS8EncodedKeySpec(encoded);
        return (RSAPrivateKey) keyFactory.generatePrivate(keySpec);

        }catch (Exception e) {

        }
        return null;
    }
    public  ResponseCookie generateResponseCookie(String cookieName, String cookieValue ) {

        ResponseCookie cookie = ResponseCookie.from(cookieName, cookieValue) // key & value
                .httpOnly(true)
                .domain(securityProperties.getIpDomain())  // host
                .path("/")      // path
                .maxAge(Duration.ofHours(1))
                .sameSite("None")  // sameSite
                .secure(true)
                .build();
        return cookie;
    }


    public  ResponseCookie removeResponseCookie(String cookieName, String cookieValue ) {
        ResponseCookie cookie = ResponseCookie.from(cookieName, "") // key & value
                .httpOnly(true)
                .domain(securityProperties.getIpDomain())  // host
                .path("/")      // path
                .maxAge(Duration.ofHours(0))
                .sameSite("None")  // sameSite
                .secure(true)
                .build();
        return cookie;
    }


    public  Cookie generateCookies (String cookieName,String cookieValue ){
        Cookie cookie = new Cookie(cookieName,cookieValue);
        cookie.setPath("/");
        cookie.setSecure(true);
        cookie.setHttpOnly(true);
        return cookie;
    }
}
