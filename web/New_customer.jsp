<%-- 
    Document   : New_customer
    Created on : Mar 25, 2018, 1:13:53 PM
    Author     : Kate
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="/includes/header.html"/>
    <body>
        <p><i>${message}</i></p>
        <form action="newcustomer" method="post">

            <fieldset><legend>Fill out this form to register for online services with Titan Bank. </legend>

                <div class="two"><label for="firstName">First Name</label><input type="text" name="firstName" ></div>
                <div class="two"><label for="lastName">Last Name</label><input type="text" name="lastName"></div>
                <div class="two"><label for="email">Email Address</label><input type="email" name="email" ></div>
                <div class="two"><label for="phone">Phone Number<span class="tooltip">In the format XXX XXX XXXX or XXX-XXX-XXXX or XXXXXXXXXX.</span></label><input type="text" name="phone"></div>
                <div class="two"><label for="address">Address</label><input type="text" name="address"></div>
                <div class="two"><label for="city">City</label><input type="text" name="city"></div>

                <div class="two"><label for="State">State</label><input type="text" name="state"></div>				

                <div class="two"><label for="zip">Zip Code</label><input type="text" name="zip"></div>

                <div class="one"><input type="submit" value="Register"></div>
            </fieldset>
        </form>
    </body>
     <c:import url="/includes/footer.jsp"/>
</html>
