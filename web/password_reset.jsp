<%-- 
    Document   : password_reset
    Created on : Apr 11, 2018, 6:42:19 PM
    Author     : Kate
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="/includes/header.html"/>
        <form action="login2" method="post" >

            
            <div><label>This is your current password: ${user.password}</label></div>
            
<div class="two"><label for="password">Enter new password</label><input type="password" name="password"></div>	
            <div><input type="submit" value="Login" id="submit"></div>

        </form>
    </body>
    <c:import url="/includes/footer.jsp"/>
</html>
