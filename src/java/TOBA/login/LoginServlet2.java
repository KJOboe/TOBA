/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TOBA.login;

import TOBA.business.User;
import TOBA.data.UserDB;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Kate
 */
public class LoginServlet2 extends HttpServlet {

    
    @Override

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {       
       
        
       
           String message = "";
              
            
            
              HttpSession session = request.getSession();
              
              User user = (User) session.getAttribute("user");
            
            
            String newPassword=request.getParameter("password");
            session.setAttribute("user2", user);
            user.setPsword(newPassword);
            
               String url = "/Account_activity.jsp";

        
        
    
        request.setAttribute("message", message);

        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    
    }
    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}