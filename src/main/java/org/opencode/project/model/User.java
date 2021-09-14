package org.opencode.project.model;


import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import javax.persistence.*;
import javax.validation.constraints.Size;
import java.util.Collection;
import java.util.Set;

/* class for creating table columns and validating input
*
*
*
*/

@Entity     //our fields are in the @t_user table
@Table(name = "t_user")     //the name of our table in the db
public class User implements UserDetails {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)     //type:IDENTITY - the DB generates ID
    private Long id;

    @Size(min=8, message = "username can't be lower 8 character")     //valid for username and text error
    private String username;

    @Size(min=8, message = "password can't be lower 8 character")
    private String password;

    @Transient
    private String passwordConfirm;     //@transient field confirm password can't be saved(the field is missing from the database)

    @ManyToMany(fetch = FetchType.EAGER)     //Set<Role> have annotation @ManyToMany(one user have 1,2...n roles,
    private Set<Role> roles;                 //and role have more one user).Type:EAGER - the role is loaded with the user

    public User() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPasswordConfirm() {
        return passwordConfirm;
    }

    public void setPasswordConfirm(String passwordConfirm) {
        this.passwordConfirm = passwordConfirm;
    }

    public Set<Role> getRoles() {
        return roles;
    }

    public void setRoles(Set<Role> roles) {
        this.roles = roles;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Override
    public String getUsername() {
        return username;
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

    @Override
    public boolean isEnabled() {
        return true;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return getRoles();
    }

    @Override
    public String getPassword() {
        return password;
    }
}
