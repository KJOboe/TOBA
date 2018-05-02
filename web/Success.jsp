<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>


    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <c:import url="/includes/header.html"/>
    <body>
        <div>Success!! Your account has been created!! </div>

        <ul>
            <li>First Name: ${user.firstName}</li>
            <li>Last Name: ${user.lastName}</li>
            <li>Address: ${user.address}</li>
            <li>City: ${user.city}</li>
            <li>State: ${user.state}</li>
            <li>Zip code: ${user.zip}</li>
            <li>Email: ${user.email}</li>
            <li>Phone: ${user.phone}</li>
            <li>Username: ${user.username}</li>
            <li>Temporary Password: ${user.password}</li>
        </ul> 

    </body>
    <c:import url="/includes/footer.jsp"/>
</html>
