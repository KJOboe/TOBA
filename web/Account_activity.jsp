<%-- 
    Document   : Account_activity
    Created on : Apr 11, 2018, 9:34:32 PM
    Author     : Kate
--%>


<!DOCTYPE html>
<html>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <c:import url="/includes/header.html"/>


    <h1>ACCOUNT ACTIVITY</h1>
    <c:choose>

        <c:when test="${sessionScope.user != null}">

            Welcome ${user.firstName} ${user.lastName}.

        </c:when>

        <c:otherwise>

            You are not logged in.

        </c:otherwise>

    </c:choose>     




    <c:import url="/includes/footer.jsp"/>
</html>