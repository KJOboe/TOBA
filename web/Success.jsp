<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Success page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="styles/TOBA_stylesheet.css" />
    </head>
    <body>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="/includes/header.html"/>

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
