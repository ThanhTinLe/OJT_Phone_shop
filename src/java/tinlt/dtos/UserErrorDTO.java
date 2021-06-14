/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tinlt.dtos;

import java.io.Serializable;

/**
 *
 * @author Ray Khum
 */
public class UserErrorDTO implements Serializable {

    String UserNameError;
    String FullNameError;
    String PasswordError;
    String roleError;

    public UserErrorDTO() {
    }

    public UserErrorDTO(String UserNameError, String FullNameError, String PasswordError, String roleError) {
        this.UserNameError = UserNameError;
        this.FullNameError = FullNameError;
        this.PasswordError = PasswordError;
        this.roleError = roleError;
    }

    public String getUserNameError() {
        return UserNameError;
    }

    public void setUserNameError(String UserNameError) {
        this.UserNameError = UserNameError;
    }

    public String getFullNameError() {
        return FullNameError;
    }

    public void setFullNameError(String FullNameError) {
        this.FullNameError = FullNameError;
    }

    public String getPasswordError() {
        return PasswordError;
    }

    public void setPasswordError(String PasswordError) {
        this.PasswordError = PasswordError;
    }

    public String getRoleError() {
        return roleError;
    }

    public void setRoleError(String roleError) {
        this.roleError = roleError;
    }

}
