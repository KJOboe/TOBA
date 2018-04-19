<!doctype html>
<html lang="en">
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="/includes/header.html"/>
    <body>
       
        <h1>Titan Banking Login</h1>
        <div><a href="password_reset.jsp">Reset Password</a></div>
        <p><a href="New_customer.jsp">New Customer Sign Up Page</a></p>
        
        <form action="login" method="post" >

            <div><label for="userName">User Name:</label><br />

                <input type="text" name="userName" autofocus required></div><br />

            <div><label for="password">Password:</label><br />
                <input type="password" name="password" required></div><br />

            <div><input type="submit" value="Login" id="submit"></div>

        </form>

    </body>
    <c:import url="/includes/footer.jsp"/>
</html>
