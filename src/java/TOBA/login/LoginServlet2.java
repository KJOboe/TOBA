/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TOBA.login;

import TOBA.business.User;
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
       String fname = request.getParameter("firstName");

        String lname = request.getParameter("lastName");

        String address = request.getParameter("address");

        String city = request.getParameter("city");

        String state = request.getParameter("state");

        String zip = request.getParameter("zip");

        String phone = request.getParameter("phone");

        String email = request.getParameter("email");
        
        //String username=request.getParameter("username");
        
        //String password=request.getParameter("password");
        
       String username=lname+zip;
        String password=request.getParameter("password");
       

        String message;
        String url = null;
       
        
        if (password == null || password.isEmpty()) {
            
            message = "Please fill out all the form fields.";
            
        } else {
            message = "";
              
            User user2 = new User(fname, lname, email, phone, address, city, state, zip, username, password);
            
              HttpSession session = request.getSession();
            session.setAttribute("user2", user2);
            //HttpSession session = request.getSession();
            //request.setAttribute("user", user);
            
            //request.getSession().setAttribute("user", user);
            
               url = "/Account_activity.jsp";

        }
        
    
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