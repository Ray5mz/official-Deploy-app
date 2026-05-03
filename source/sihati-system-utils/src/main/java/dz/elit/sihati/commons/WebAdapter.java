package dz.elit.sihati.commons;

import org.springframework.core.annotation.AliasFor;
import org.springframework.stereotype.Component;

import java.lang.annotation.*;

@Target({ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
@Documented
@Component
public @interface WebAdapter {

    /**
     * The value may indicate a suggestion for a logical component name,
     * <p>
     * to be turned into a Spring bean in case of an autodetected component.
     *
     * @return the suggested component name, if any (or empty String otherwise)
     */

    @AliasFor(annotation = Component.class)
    String value() default "";
}
