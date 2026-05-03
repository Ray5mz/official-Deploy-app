package dz.elit.sihati.application.admin.user.queries.getuser;

import com.fasterxml.jackson.annotation.JsonIgnore;
import dz.elit.sihati.domain.commons.UserContextDto;
import lombok.*;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Getter
@Setter
@Data
@NoArgsConstructor
@AllArgsConstructor
public class GetUserDtoResponse  implements UserDetails, UserContextDto {
    private String id;
    private String code;
    private String username;
    private String firstName;
    private String lastName;
    @JsonIgnore
    private String password;
    private String email;
    private String phoneNumber;
    private boolean enabled;
    private boolean disableNotification;
    private boolean passwordChange;
    private GetUserDtoResponseStructure structure;
    private GetUserDtoResponseStructure structureAccess;
    private List<GetUserDtoResponseRole> roles;
    private List<GetUserDtoResponseDomain> domains;
    private String module;
    private Integer year;
    private Integer semester;
    private Integer trimester;
    private Integer month;

    private Integer defaultYear;
    private Integer defaultSemester;
    private Integer defaultTrimester;
    private Integer defaultMonth;

     @Override
     public Set<GrantedAuthority> getAuthorities() {
         return new HashSet<>();
     }

       @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    public boolean getPasswordChange() {
         return this.passwordChange;
    }


    public Integer findDefaultYear() {
        LocalDate currentdate = LocalDate.now();
        Integer defaultValue = null;
        if (defaultYear != null)
            if (defaultYear != 0) {
                defaultValue=  defaultYear;
               if (defaultValue < 0) {
                    defaultValue = currentdate.getYear() + defaultValue;
                }
            }
        Integer semesterTemp=findDefaultSemester(false);
        Integer trimesterTemp=findDefaultTrimester(false);
        Integer monthTemp=findDefaultMonth(false);
        if(semesterTemp!=null){ if(semesterTemp<=0){
            if(defaultValue==null)defaultValue=LocalDate.now().getYear();

            defaultValue=defaultValue-1;
            trimesterTemp=null;
                    monthTemp=null;
        }}


        if(trimesterTemp!=null){ if(trimesterTemp<=0){
            if(defaultValue==null)defaultValue=LocalDate.now().getYear();

            defaultValue=defaultValue-1;
            monthTemp=null;
        }}


        if(monthTemp!=null){ if(monthTemp<=0){
            if(defaultValue==null)defaultValue=LocalDate.now().getYear();

            defaultValue=defaultValue-1;

        }}



            return  defaultValue;
    }

    public Integer findDefaultSemester(boolean reel) {
        LocalDate currentdate = LocalDate.now();
        int periodTemp = currentdate.getMonth().getValue()< 7 ? 1 : 2; ;
        Integer defaultValue = null;
        if (defaultSemester != null)
            if (defaultSemester != 0) {
                defaultValue=  defaultSemester;
                if (defaultSemester < 0) {
                    defaultValue = periodTemp + defaultSemester;
                    if(reel)   if(defaultValue <= 0) {
                        defaultValue = defaultValue + 2;
                    }
                }
            }
        return  defaultValue;
    }



    public Integer findDefaultTrimester(boolean reel) {
        LocalDate currentdate = LocalDate.now();
        int periodTemp = currentdate.getMonth().getValue()< 4 ? 1 : (currentdate.getMonth().getValue()< 7 ? 2 : currentdate.getMonth().getValue()< 10 ? 3 : 4); ;
        Integer defaultValue = null;
        if (defaultTrimester != null)
            if (defaultTrimester != 0) {
                defaultValue=  defaultTrimester;
                if (defaultTrimester < 0) {
                    defaultValue = periodTemp + defaultTrimester;
                 if(reel)   if(defaultValue <= 0) {
                        defaultValue = defaultValue + 4;
                    }
                }
            }
        return  defaultValue;
    }


    public Integer findDefaultMonth(boolean reel) {
        LocalDate currentdate = LocalDate.now();
        int periodTemp = currentdate.getMonth().getValue() ;
        Integer defaultValue = null;
        if (defaultMonth != null)
            if (defaultMonth != 0) {
                defaultValue=  defaultMonth;
                if (defaultMonth < 0) {
                    defaultValue = periodTemp + defaultMonth;

                    if(reel)    if(defaultValue <= 0) {
                        defaultValue = defaultValue + 12;
                    }
                }
            }
        return  defaultValue;
    }






    
}
