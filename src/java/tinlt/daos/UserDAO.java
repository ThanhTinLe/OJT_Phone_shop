/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tinlt.daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import tinlt.dtos.UserDTO;

/**
 *
 * @author Ray Khum
 */
public class UserDAO {

    public UserDTO CheckLogin(String UserName, String Password) throws SQLException {
        Connection cn = null;
        PreparedStatement pst = null;
        ResultSet rs = null;
        UserDTO user = null;
        try {
            cn = tinlt.utils.DBUtils.getConnection();
            if (cn != null) {
                String sql = "SELECT [UserName],[FullName],[Password],[Role]\n"
                        + "FROM	[dbo].[User]\n"
                        + "WHERE [UserName] = ? AND [Password] = ?";
                pst = cn.prepareStatement(sql);
                pst.setString(1, UserName);
                pst.setString(2, Password);
                rs = pst.executeQuery();
                if (rs.next()) {
                    String Name = rs.getString("UserName");
                    String FullName = rs.getString("FullName");
                    String Pass = rs.getString("Password");
                    boolean role = rs.getBoolean("Role");
                    user = new UserDTO(Name, FullName, Pass, role);
                }
            }
        } catch (Exception e) {
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (pst != null) {
                pst.close();
            }
            if (cn != null) {
                cn.close();
            }
        }
        return user;
    }

}
