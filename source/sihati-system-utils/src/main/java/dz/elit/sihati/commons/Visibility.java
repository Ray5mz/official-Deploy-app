package dz.elit.sihati.commons;


import java.lang.annotation.*;

@Retention(RetentionPolicy.RUNTIME)
@Target({ElementType.METHOD})
@Documented
public @interface Visibility {
    String value() default "";
}
