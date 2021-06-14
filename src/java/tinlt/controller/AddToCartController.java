/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tinlt.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import tinlt.daos.ProductDAO;
import tinlt.dtos.CartDTO;
import tinlt.dtos.ProductDTO;

/**
 *
 * @author Ray Khum
 */
public class AddToCartController extends HttpServlet {
    
    public static final String ERROR = "";
    public static final String SUCCESS = "productList.jsp";

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
            HttpSession session = request.getSession();
            String productID = request.getParameter("txtID");
            String userName = (String) session.getAttribute("USER");
            ProductDTO dto = null;
            ProductDAO dao = new ProductDAO();
            dto = dao.GetProductByID(productID);
            
            CartDTO cart = (CartDTO) session.getAttribute("CART");
            Map<String, ProductDTO> map = (Map<String, ProductDTO>) session.getAttribute("MAP");
            
            if (dto.getId() == Integer.parseInt(productID)) {
                
                if (map == null) {
                    map = new HashMap<>();
                    dto.setUnitInStock(1);
                } else {
                    float quan = 0;
                    if (map.containsKey(productID)) {
                        quan = map.get(productID).getUnitInStock();
                        dto.setUnitInStock(1 + quan);
                    } else {
                        dto.setUnitInStock(1);
                    }
                }
                map.put(dto.getId() + "", dto);
                cart = new CartDTO(userName, map);
                url = SUCCESS;
                session.setAttribute("CART", cart);
                session.setAttribute("MAP", map);
                session.setAttribute("VALUE", map.values());
                request.setAttribute("ADD", "Added 1 " + dto.getName() + "to cart");
                System.out.println(map);
            }
        } catch (Exception e) {
            System.err.println(e.getMessage());
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
