package dz.elit.sihati.web.apidocumentation;/*package dz.elit.sihati.web.apidocumentation;

import static com.google.common.base.Predicates.or;
import com.google.common.collect.Lists;
import java.util.List;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Profile;
import org.springframework.web.servlet.config.annotation.*;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.*;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spi.service.contexts.SecurityContext;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

import java.util.function.Predicate;

import static springfox.documentation.builders.PathSelectors.regex;

@Configuration
@EnableSwagger2
@Profile("dev")
public class SwaggerConfig  extends WebMvcConfigurationSupport {
  /*  @Bean
    public Docket api() {
        return new Docket(DocumentationType.SWAGGER_2)
          .select()
          .apis(RequestHandlerSelectors.any())
          .paths(PathSelectors.any())
          .build();
    }*/
/*
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/**").addResourceLocations(
                "classpath:/static/");
        registry.addResourceHandler("swagger-ui.html").addResourceLocations(
                "classpath:/META-INF/resources/");
        registry.addResourceHandler("/webjars/**").addResourceLocations(
                "classpath:/META-INF/resources/webjars/");
        super.addResourceHandlers(registry);
    }

    @Override
    protected PathMatchConfigurer getPathMatchConfigurer() {
        PathMatchConfigurer pathMatchConfigurer = super.getPathMatchConfigurer();
        pathMatchConfigurer.setUseSuffixPatternMatch(false);

        return pathMatchConfigurer;
    }

    @Bean
     public Docket api() {
         return new Docket(DocumentationType.SWAGGER_2)
                 .select()
                 .apis(RequestHandlerSelectors.basePackage("dz.elit.sihati.web"))
                 .paths(PathSelectors.ant("/api/production/**"))
                 .build()
                 .apiInfo(apiInfo())
                 .securityContexts(Lists.newArrayList(securityContext()))
                 .securitySchemes(Lists.newArrayList(apiKey()));
     }
  private ApiInfo apiInfo() {
    Contact contact = new Contact("Mesbah GUEFFAF", "https://www.elit.dz", "mesbah.gueffaf@elit.dz");
    return new ApiInfoBuilder()
      .title("pfe rest docs")
      .description("pfe description of API.")
      .version("0.0.1")
      .contact(contact)
      .build();
  }

    private ApiKey apiKey() {
        return new ApiKey("AUTHORIZATION", "Authorization", "header");
    }



    private SecurityContext securityContext() {
        return SecurityContext.builder()
                .securityReferences(defaultAuth())
                //.forPaths(paths())
                .build();
    }

   private List<SecurityReference> defaultAuth() {
        AuthorizationScope authorizationScope
                = new AuthorizationScope("global", "accessEverything");
        AuthorizationScope[] authorizationScopes = new AuthorizationScope[1];
        authorizationScopes[0] = authorizationScope;
        return Lists.newArrayList(
                new SecurityReference("AUTHORIZATION", authorizationScopes));
    }

  private Predicate<String> paths() {
        return or(
                regex("/api/production/auth/refresh-token"),
                regex("/api/production/auth/change-password"),
                regex("/api/production/subscribers.*"),
                regex("/api/production/users.*"));
    }
}

*/