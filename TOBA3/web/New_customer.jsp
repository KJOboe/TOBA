<%-- 
    Document   : New_customer
    Created on : Mar 25, 2018, 1:13:53 PM
    Author     : Kate
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="TOBA_stylesheet.css" />
        <title>New Customer</title>
    </head>
    <body>
        <form action="#" method="post" id="theForm">
        <fieldset><legend>Fill out this form to create a new account with Titan Bank. </legend>
			<p>All fields are required.</p>
			<div class="two"><label for="firstName">First Name</label><input type="text" name="firstName" id="firstName" required></div>
			<div class="two"><label for="lastName">Last Name</label><input type="text" name="lastName" id="lastName" required></div>
			<div class="two"><label for="email">Email Address</label><input type="email" name="email" id="email" required></div>
			<div class="two"><label for="phone">Phone Number<span class="tooltip">In the format XXX XXX XXXX or XXX-XXX-XXXX or XXXXXXXXXX.</span></label><input type="text" name="phone" id="phone" required></div>
			
			<div class="two"><label for="city">City</label><select name="city" id="city">
				<option value="">Select a City</option> 
				<option value="Clearwater">Clearwater</option> 
				<option value="Largo">Largo</option> 
				<option value="Saint Petersburg">Saint Petersburg</option> 
				<option value="Seminole">Seminole</option> 
				</select></div> 
				
	<div class="two"><label for="State">State</label><input type="text" name="State" id="State" required></div>				
			   
			<div class="two"><label for="zip">Zip Code</label><input type="text" name="zip" id="zip" required></div>
			<div class="one"><input type="checkbox" name="terms" id="terms" required> I am 18 years or older.</div>
			<div class="one"><input type="submit" value="Submit" id="submit"></div>
        </fieldset>
    </form>
    </body>
</html>
