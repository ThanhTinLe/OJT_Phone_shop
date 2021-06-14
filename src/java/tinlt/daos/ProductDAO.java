/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tinlt.daos;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import tinlt.dtos.ProductDTO;

/**
 *
 * @author Ray Khum
 */
public class ProductDAO implements Serializable {

    public List<ProductDTO> GetListProduct() throws SQLException {
        Connection cn = null;
        PreparedStatement pst = null;
        ResultSet rs = null;
        List<ProductDTO> list = null;
        ProductDTO product = null;
        try {

            cn = tinlt.utils.DBUtils.getConnection();
            if (cn != null) {
                String sql = "SELECT [ID],[Name],[Unit_Price],[Unit_Stock],[Description],[Manufacturer],[Category],[Condition],[image]\n"
                        + "FROM [dbo].[Product]";
                pst = cn.prepareStatement(sql);
                rs = pst.executeQuery();
                while (rs.next()) {
                    int ID = rs.getInt("ID");
                    String Name = rs.getString("Name");
                    float UnitPrice = rs.getFloat("Unit_Price");
                    float UnitInStock = rs.getFloat("Unit_Stock");
                    String Description = rs.getString("Description");
                    String Manufacturer = rs.getString("Manufacturer");
                    String Category = rs.getString("Category");
                    String Condition = rs.getString("Condition");
                    String Image = rs.getString("image");

                    product = new ProductDTO(ID, Name, UnitPrice, UnitInStock, Description, Manufacturer, Category, Condition, Image);
                    if (list == null) {
                        list = new ArrayList<>();
                    }
                    list.add(product);
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
        return list;
    }

    public boolean AddProduct(ProductDTO pro) throws SQLException {
        Connection cn = null;
        PreparedStatement pst = null;
        boolean check = false;
        try {
            cn = tinlt.utils.DBUtils.getConnection();
            if (cn != null) {
                String sql = "INSERT INTO [dbo].[Product]([Name],[Unit_Price],[Unit_Stock],[Description],[Manufacturer],[Category],[Condition],[image])\n"
                        + "VALUES(?,?,?,?,?,?,?,?)";
                pst = cn.prepareStatement(sql);
                pst.setString(1, pro.getName());
                pst.setFloat(2, pro.getUnitPrice());
                pst.setFloat(3, pro.getUnitInStock());
                pst.setString(4, pro.getDescription());
                pst.setString(5, pro.getManufacturer());
                pst.setString(6, pro.getCategory());
                pst.setString(7, pro.getCondition());
                pst.setString(8, pro.getImage());
                check = pst.executeUpdate() > 0;
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
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

    public ProductDTO GetProductByID(String id) throws SQLException {
        Connection cn = null;
        PreparedStatement pst = null;
        ResultSet rs = null;
        ProductDTO product = null;
        try {

            cn = tinlt.utils.DBUtils.getConnection();
            if (cn != null) {
                String sql = "SELECT [ID],[Name],[Unit_Price],[Unit_Stock],[Description],[Manufacturer],[Category],[Condition],[image]\n"
                        + "FROM [dbo].[Product]"
                        + "WHERE [ID] = ? ";
                pst = cn.prepareStatement(sql);
                pst.setString(1, id);
                rs = pst.executeQuery();
                if (rs.next()) {
                    int ID = rs.getInt("ID");
                    String Name = rs.getString("Name");
                    float UnitPrice = rs.getFloat("Unit_Price");
                    float UnitInStock = rs.getFloat("Unit_Stock");
                    String Description = rs.getString("Description");
                    String Manufacturer = rs.getString("Manufacturer");
                    String Category = rs.getString("Category");
                    String Condition = rs.getString("Condition");
                    String Image = rs.getString("image");

                    product = new ProductDTO(ID, Name, UnitPrice, UnitInStock, Description, Manufacturer, Category, Condition, Image);
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
        return product;
    }
    
    
}
