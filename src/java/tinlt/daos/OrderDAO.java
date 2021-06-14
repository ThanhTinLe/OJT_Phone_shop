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
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author Ray Khum
 */
public class OrderDAO {

    public boolean insertOrder(float total, String UserName) throws SQLException {
        Connection cn = null;
        PreparedStatement pst = null;
        boolean check = false;
        Date date = new Date();
        SimpleDateFormat simple = new SimpleDateFormat("yyyy-MM-dd");
        String format = simple.format(date);
        try {
            cn = tinlt.utils.DBUtils.getConnection();
            if (cn != null) {
                String sql = "INSERT INTO [dbo].[Order]([TotalPrice],[UserName],[BuyDate])\n"
                        + "VALUES(?,?,?)";
                pst = cn.prepareStatement(sql);
                pst.setFloat(1, total);
                pst.setString(2, UserName);
                pst.setString(3, format);
                check = pst.executeUpdate() > 0;
            }
        } catch (Exception e) {
        } finally {
            if (pst != null) {
                pst.close();
            }
            if (cn != null) {
                cn.close();
            }
        }
        return check;
    }

    public int getOderID() throws SQLException {
        Connection cn = null;
        PreparedStatement pst = null;
        ResultSet rs = null;
        int orderID = 0;
        try {
            cn = tinlt.utils.DBUtils.getConnection();
            if (cn != null) {
                String sql = "SELECT MAX([OrderID]) as MaxOrderID\n"
                        + "FROM [dbo].[Order]";
                pst = cn.prepareStatement(sql);
                rs = pst.executeQuery();
                if (rs.next()) {
                    orderID = rs.getInt("MaxOrderID");
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
        return orderID;
    }

    public boolean insertOrderDetail(int proID, int orderID, int quantity) throws SQLException {
        Connection cn = null;
        PreparedStatement pst = null;
        boolean check = false;
        try {
            cn = tinlt.utils.DBUtils.getConnection();
            if (cn != null) {
                String sql = "INSERT INTO [dbo].[Order_Detail]([proID],[orderID],[numOfPro])\n"
                        + "VALUES(?,?,?)";
                pst = cn.prepareStatement(sql);
                pst.setInt(1, proID);
                pst.setInt(2, orderID);
                pst.setInt(3, quantity);
                check = pst.executeUpdate() > 0;
            }
        } catch (Exception e) {
        } finally {
            if (pst != null) {
                pst.close();
            }
            if (cn != null) {
                cn.close();
            }
        }
        return check;
    }
}
