/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tinlt.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import tinlt.daos.ProductDAO;
import tinlt.dtos.ProductDTO;
import tinlt.dtos.ProductErrorDTO;

/**
 *
 * @author Ray Khum
 */
public class AddProductController extends HttpServlet {

    public static final String ERROR = "addProduct.jsp";

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        try {
            String Name = request.getParameter("txtProductName");
            String UnitPrice = request.getParameter("txtUnitPrice");
            String UnitInStock = request.getParameter("txtUnitInStock");
            String Description = request.getParameter("txtDescription");
            String Manufacturer = request.getParameter("txtManufacturer");
            String Category = request.getParameter("txtCategory");
            String Condition = request.getParameter("txtCondition");
            String Image = request.getParameter("txtImage");
            ProductErrorDTO error = new ProductErrorDTO();
            if (Condition == null) {
                Condition = "";
            }
            boolean check = true;
            if (Name.isEmpty()) {
                error.setNameError("product name is empty");
                check = false;
            }
            if (UnitPrice.isEmpty()) {
                error.setUnitPriceError("Unit price is empty");
                check = false;
            }
            if (UnitInStock.isEmpty()) {
                error.setUnitInStockError("Unit in stock is empty");
                check = false;
            }
            if (Description.isEmpty()) {
                error.setDescriptionError("Description is empty");
                check = false;
            }
            if (Manufacturer.isEmpty()) {
                error.setManufacturerError("Manufactuere is empty");
                check = false;
            }
            if (Category.isEmpty()) {
                error.setCategoryError("Category is empty");
                check = false;
            }
            if (Condition.isEmpty()) {
                error.setConditionError("Condition is empty");
                check = false;
            }
            if (Image.isEmpty()) {
                error.setImageError("Image is empty");
                check = false;
            }
            ProductDAO dao = new ProductDAO();
            float unit = Float.parseFloat(UnitPrice);
            float stock = Float.parseFloat(UnitInStock);
            if (check) {
                ProductDTO dto = new ProductDTO(0, Name, unit, stock, Description, Manufacturer, Category, Condition, Image);
                if (dao.AddProduct(dto)) {
                    request.setAttribute("ADD", "Create a new product success");
                }
            } else {
                request.setAttribute("NAME_ERROR", error.getNameError());
                request.setAttribute("PRICE_ERROR", error.getUnitPriceError());
                request.setAttribute("STOCK_ERROR", error.getUnitInStockError());
                request.setAttribute("DESCRIPTION_ERROR", error.getDescriptionError());
                request.setAttribute("MANUFACTURER_ERROR", error.getManufacturerError());
                request.setAttribute("CATEGORY_ERROR", error.getCategoryError());
                request.setAttribute("CONDITION_ERROR", error.getConditionError());
                request.setAttribute("IMAGE_ERROR", error.getImageError());
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
