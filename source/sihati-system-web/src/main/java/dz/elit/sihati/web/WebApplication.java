package dz.elit.sihati.web;

import dz.elit.sihati.infrastructure.jasper.config.jasperreports.PdfExportConfig;
import dz.elit.sihati.infrastructure.jasper.config.jasperreports.PdfReportConfig;
import dz.elit.sihati.utils.logger.LoggerConfigurator;
import dz.elit.sihati.web.security.config.SecurityProperties;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

/**
 * Main entry for the web module.
 *
 * @author Mesbah GUEFFAF (mesbah.gueffaf@elit.dz)
 */

@SpringBootApplication
@ComponentScan(basePackages = {"dz.elit.sihati"})
@EnableJpaRepositories(basePackages = {"dz.elit.sihati"})
@EntityScan(basePackages = {"dz.elit.sihati"})
@EnableConfigurationProperties({
        SecurityProperties.class, PdfExportConfig.class, PdfReportConfig.class
})
@EnableCaching
@EnableAsync
@EnableScheduling
 public class WebApplication  {
//    @Override
//    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
//        return application.sources(WebApplication.class);
//    }
    public WebApplication(LoggerConfigurator loggerConfigurator) {
        loggerConfigurator.configureLogger();
    }

    public static void main(String[] args) {
        SpringApplication.run(WebApplication.class, args);
    }
    @Bean
    public BCryptPasswordEncoder bCryptPasswordEncoder() {
        return new BCryptPasswordEncoder();
    }
}
