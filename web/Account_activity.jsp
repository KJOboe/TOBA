<%-- 
    Document   : Account_activity
    Created on : Apr 11, 2018, 9:34:32 PM
    Author     : Kate
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="styles/TOBA_stylesheet.css" />
        <title>Account Activity</title>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    </head>
    
       
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="/includes/header.html"/>
        <h1>ACCOUNT ACTIVITY</h1>
        
 
 <c:if test="${user.firstName} ${user.lastName}"><p> HELLO ${user.firstName}${user.lastName}</p></c:if>
    <c:otherwise><P> Not in session</p></c:otherwise>
    
