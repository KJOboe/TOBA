package TOBA.newcustomer;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class NewCustomerServlet extends HttpServlet {

    @Override

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
String url = "/New_customer.html";
        
        // get current action
        String action = request.getParameter("action");
       if (action == null) {
            action = "register";  // default action
        }

        // perform action and set URL to appropriate page
        if (action.equals("register")) {
            
        
        String fname = request.getParameter("firstName");

        String lname = request.getParameter("lastName");

        String address = request.getParameter("address");

        String city = request.getParameter("city");

        String state = request.getParameter("state");

        String zip = request.getParameter("zip");

        String phone = request.getParameter("phone");

        String email = request.getParameter("email");

        String message;
       

        if (fname == null || lname == null || email == null || address == null
                || city == null || state == null || zip == null || phone == null
                || fname.isEmpty() || lname.isEmpty() || email.isEmpty() || address.isEmpty()
                || city.isEmpty() || state.isEmpty() || zip.isEmpty() || phone.isEmpty()) {
            
            message = "Please fill out all the form fields.";
            url = "/New_customer.jsp";
        } else {
            message = "";
            url = "/Success.html";

        }

        request.setAttribute("message", message);

        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
    }
    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}
