/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TOBA.login;

import TOBA.business.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Kate
 */
public class LoginServlet extends HttpServlet {

    @Override

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String url;
        String uname = request.getParameter("username");

        String pword = request.getParameter("password");

        User user = (User) request.getSession().getAttribute("user");
        if (user == null) {
            url = "/New_customer.jsp";
        } else {
            if (uname.equals(user.getUsername()) && pword.equals(user.getPassword())) {
                url = "/Account_activity.jsp";
            } else {
                url = "/Login_failure.jsp";
            }

        }

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
