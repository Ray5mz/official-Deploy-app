package dz.elit.sihati.web.security.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;
import org.springframework.web.filter.CorsFilter;

import java.util.Arrays;

/**
 * @author gueffaf
 * @version 1.0
 * @created 8/14/2018
 */

@Configuration
public class RestConfig {
	@Autowired
	private  SecurityProperties securityProperties;

	@Bean
	public CorsFilter corsFilter() {
 		UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
		CorsConfiguration config = new CorsConfiguration();
		config.setAllowedOrigins(Arrays.asList("https://"+securityProperties.getIpDomain()+":"+securityProperties.getPortDomain(),"https://"+securityProperties.getIpDomain()));
	//	config.addAllowedOriginPattern("*");
		config.addAllowedHeader("*");
		config.setMaxAge(3600L);
		config.setAllowCredentials(true);
		config.addAllowedMethod("OPTIONS");
		config.addAllowedMethod("GET");
		config.addAllowedMethod("POST");
		config.addAllowedMethod("PUT");
		config.addAllowedMethod("DELETE");
		source.registerCorsConfiguration("/**", config);
		return new CorsFilter(source);
	}
}
