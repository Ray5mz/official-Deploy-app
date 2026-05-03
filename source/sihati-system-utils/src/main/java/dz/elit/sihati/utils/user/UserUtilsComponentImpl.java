package dz.elit.sihati.utils.user;

import org.springframework.stereotype.Component;


/**
 * @author gueffaf
 * @version 1.0
 * @created 8/13/2018
 */
@Component
class UserUtilsComponentImpl implements UserUtilsComponent {

    @Override
    public String  getUsernameFromEmail(String email) {
            return email.substring(0, email.indexOf("@"));
    }


}
