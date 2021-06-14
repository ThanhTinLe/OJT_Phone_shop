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
public class UserDTO implements Serializable{
    
    String UserName;
    String FullName;
    String Password;
    boolean role;

    public UserDTO() {
    }

    public UserDTO(String UserName, String FullName, String Password, boolean role) {
        this.UserName = UserName;
        this.FullName = FullName;
        this.Password = Password;
        this.role = role;
    }

    public String getUserName() {
        return UserName;
    }

    public void setUserName(String UserName) {
        this.UserName = UserName;
    }

    public String getFullName() {
        return FullName;
    }

    public void setFullName(String FullName) {
        this.FullName = FullName;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public boolean isRole() {
        return role;
    }

    public void setRole(boolean role) {
        this.role = role;
    }
    
    
    
}
