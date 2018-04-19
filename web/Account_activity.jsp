<%-- 
    Document   : Account_activity
    Created on : Apr 11, 2018, 9:34:32 PM
    Author     : Kate
--%>


<!DOCTYPE html>
<html>
    <body>     
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="/includes/header.html"/>


        <h1>ACCOUNT ACTIVITY</h1>
        


<c:if test="${sessionScope.user2 != null}">

Welcome ${user2.firstName} ${user2.lastName}.
</c:if>

<c:if test="${sessionScope.user2 =null}">

    <p>You are not logged in.</p></c:if>
    </body>   
     <c:import url="/includes/footer.jsp"/>
</html>