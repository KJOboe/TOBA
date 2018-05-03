
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <c:import url="/includes/header.html"/>
<!-- start the middle column -->

<section>

<h1>Login Form</h1>
<p>Please enter a username and password to continue as an administrator.</p>
<form action="j_security_check" method="post">
    <label>Username</label>
    <input type="text" name="j_username"><br>
    <label>Password</label>
    <input type="password" name="j_password"><br>
    <label>&nbsp;</label>
    <input type="submit" value="Login">
</form>

</section>
 <c:import url="/includes/footer.jsp"/>

