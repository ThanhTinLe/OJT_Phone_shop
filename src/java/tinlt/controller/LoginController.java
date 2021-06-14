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
import javax.servlet.http.HttpSession;
import tinlt.daos.UserDAO;
import tinlt.dtos.UserDTO;
import tinlt.dtos.UserErrorDTO;

/**
 *
 * @author Ray Khum
 */
public class LoginController extends HttpServlet {

    public static final String ERROR = "index.jsp";
    public static final String ADMIN = "addProduct.jsp";
    public static final String USER = "ViewProductController";

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
            UserErrorDTO error = new UserErrorDTO();
            String UserName = request.getParameter("txtUserName");
            String Password = request.getParameter("txtPassword");
            HttpSession session = request.getSession();
            UserDAO dao = new UserDAO();
            boolean check = true;
            if (UserName.isEmpty()) {
                check = false;
                request.setAttribute("NAME", "UserName is Empty");
            }
            if (Password.isEmpty()) {
                check = false;
                request.setAttribute("PASS", "password is empty");
            }
            if (check) {
                UserDTO user = dao.CheckLogin(UserName, Password);
                if (user != null) {
                    if (user.isRole() == true) {
                        url = USER;
                        session.setAttribute("USER", user.getUserName());
                    } else {
                        url = ADMIN;
                        session.setAttribute("USER", user.getUserName());
                    }
                } else {
                    request.setAttribute("SAITK", "UserName or Password are incorrect");
                    url = ERROR;
                }
            } else {
//                request.setAttribute("ERROR", error);
                url = ERROR;
            }

        } catch (Exception e) {
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
