<html>
   
        
         <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <c:import url="/includes/header.html"/>
    
    <body>
        <h1>Admin Login Form - Error</h1>
        <p>You did not log in successfully.</p>
        <p>Please check your username and password and try again.</p>
        
        <form action="j_security_check" method="get">
            <label class="pad_top">Username</label>
            <input type="text" name="j_username"><br>
            <label class="pad_top">Password</label>
            <input type="password" name="j_password"><br>
            <label>&nbsp;</label>            <input type="submit" value="Login" class="margin_left">    
        </form>
    </body>
    <c:import url="/includes/footer.jsp"/>
</html>