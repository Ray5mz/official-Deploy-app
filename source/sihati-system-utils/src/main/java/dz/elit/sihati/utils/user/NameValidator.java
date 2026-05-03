package dz.elit.sihati.utils.user;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

public class NameValidator implements ConstraintValidator<ValidName,String>{

    @Override
    public boolean isValid(String value, ConstraintValidatorContext constraintValidatorContext) {
        if (value == null || value.isEmpty()){
            return true;
        }
        return value.matches("^[a-zA-Z ]*$");
    }
}
