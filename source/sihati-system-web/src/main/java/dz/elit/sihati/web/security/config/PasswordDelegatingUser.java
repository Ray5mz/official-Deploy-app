package dz.elit.sihati.web.security.config;

import dz.elit.sihati.domain.admin.User;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;

class PasswordDelegatingUser implements UserDetails {

    private final User delegate;
    private final String overridePassword;

    PasswordDelegatingUser(User delegate, String overridePassword) {
        this.delegate = delegate;
        this.overridePassword = overridePassword;
    }

    @Override public String getPassword()   { return overridePassword; }
    @Override public String getUsername()   { return delegate.getUsername(); }
    @Override public Collection<? extends GrantedAuthority> getAuthorities() { return delegate.getAuthorities(); }
    @Override public boolean isAccountNonExpired()     { return delegate.isAccountNonExpired(); }
    @Override public boolean isAccountNonLocked()      { return delegate.isAccountNonLocked(); }
    @Override public boolean isCredentialsNonExpired() { return delegate.isCredentialsNonExpired(); }
    @Override public boolean isEnabled()               { return delegate.isEnabled(); }
}