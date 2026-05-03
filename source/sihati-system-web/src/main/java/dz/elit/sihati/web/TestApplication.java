
package dz.elit.sihati.web;


import io.jsonwebtoken.Jws;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;

import java.security.*;
import java.util.Base64;
import java.util.Date;

public class TestApplication   {


     public void testJWTWithRsa() throws NoSuchAlgorithmException {
         KeyPairGenerator keyGenerator = KeyPairGenerator.getInstance("RSA");
         keyGenerator.initialize(2048);

         KeyPair kp = keyGenerator.genKeyPair();
         PublicKey publicKey = (PublicKey) kp.getPublic();
         PrivateKey privateKey = (PrivateKey) kp.getPrivate();

         String encodedPublicKey = Base64.getEncoder().encodeToString(publicKey.getEncoded());


         String encodedPrivateKey = Base64.getEncoder().encodeToString(privateKey.getEncoded());

         String token = generateJwtToken(privateKey);
         printStructure(token, publicKey);
     }

     @SuppressWarnings("deprecation")
     public String generateJwtToken(PrivateKey privateKey) {
         String token = Jwts.builder().setSubject("adam")
                 .setExpiration(new Date(2018, 1, 1))
                 .setIssuer("info@wstutorial.com")
                 .claim("groups", new String[] { "user", "admin" })
                 // RS256 with privateKey
                 .signWith(SignatureAlgorithm.RS256, privateKey).compact();
         return token;
     }

     //Print structure of JWT
     public void printStructure(String token, PublicKey publicKey) {
         Jws  parseClaimsJws = Jwts.parser().setSigningKey(publicKey)
                 .parseClaimsJws(token);

     }


     // Add BEGIN and END comments
     private String convertToKey(String key,String pubPri){
         StringBuilder result = new StringBuilder();
         result.append("-----BEGIN-"+pubPri+"-KEY-----\n");
         result.append(key);
         result.append("\n-----END-"+pubPri+"-KEY-----");
         return result.toString();
     }



}
