package TOBA.newcustomer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import TOBA.business.User;
import javax.servlet.http.HttpSession;
import TOBA.data.UserDB;

public class NewCustomerServlet extends HttpServlet {

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
        String username = lname + zip;
        String password = "welcome1";

        String message;
        String url;

        if (fname == null || lname == null || email == null || address == null
                || city == null || state == null || zip == null || phone == null
                || fname.isEmpty() || lname.isEmpty() || email.isEmpty() || address.isEmpty()
                || city.isEmpty() || state.isEmpty() || zip.isEmpty() || phone.isEmpty()) {

            message = "Please fill out all the form fields.";
            url = "/New_customer.jsp";
        } else {
            message = "";

            User user = new User(fname, lname, email, phone, address, city, state, zip, username, password);
            UserDB.insert(user);
            HttpSession session = request.getSession();
            session.setAttribute("user", user);

            //request.getSession().setAttribute("user", user);
            //request.getSession().setAttribute("user", user);
            url = "/Success.jsp";

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
