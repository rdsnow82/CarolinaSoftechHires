<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!doctype html>
<html>
<head>
<meta name="description" content="Registration Page of carolinasoftechhires.com">
<meta charset="utf-8">
<title>carolinasoftechhires.com - Registration</title>


<%@ include file="NavBar.jsp" %>
<!-- <link href="Local_IT_Hire.css" rel="stylesheet" type="text/css"> -->

<link href="CarolinaSoftechHires.css" rel="stylesheet" type="text/css">

<!--REQUIRED-->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<!--Import your css, make sure the href matches where you put it-->
<link rel="stylesheet" href="css/template.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>


<script type="text/javascript">
function password_Validation(){
  var password = document.getElementById("password").value;
  
  var confirmPassword = document.getElementById("confirmPassword").value;
  
  if (password != confirmPassword) {
    alert("Passwords do not match");
    return false;
  }
  return true;
}
</script>

<!--  Prevents back button use -->
<script type="text/javascript">
function preback() {window.history.forward();}
setTimeout("preback()", 0);
window.onunload=function() {null};
</script>

</head>

<body>
	<div class="form-page">
		<div class="registration-page-heading">
			<h3><strong>Register</strong></h3>
          <div style="margin-bottom: 15px;"><strong>Create your free account and get connected!</strong></div>
        </div>
			
				<form method="POST" action="Register">
					<div class="full-name">
						<input type="text" class="user-input" name="firstname" placeholder="First Name*" required>
						<input type="text" class="user-input" name="lastname" placeholder="Last Name*" required>
					</div>
					<div class="contact-info">
						<input type="email" class="user-input" name="email" placeholder="E-mail Address*" required>
						<input type="tel" class="user-input" name="phonenumber" placeholder="Phone* 555-555-5555" pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" required>
					</div>
					<div class="company-info">
						<input type="text" class="user-input" name="company" placeholder="Company Name">
					</div>
					<div class="username">
					<input type="text" class="user-input" name="username" placeholder="Username*" required>
					</div>
					<div class="user-password">
					  <input type="password" id="password" class="user-input" name="password" placeholder="Password (Min. 8)*" pattern="(?=^.{8,26}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" required>
					  <input type="password" id="confirmPassword" class="user-input" name="confirm-password" placeholder="Confirm Password*" pattern="(?=^.{8,26}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" required>
						<p class="hint"><strong>Password must include at least one: Uppercase Letter and Special Character</strong></p>
		  			</div>
		  			<div class="privacy-acknowledgement" style="margin-top: 10px; margin-bottom: 10px;">
					  <input type="checkbox" id="privacy-notice" name="privacy-notice" style="width: 3%;" required>
					  <label for="privacy-notice">By registering, I agree to the <a href="privacy-policy-template.pdf" target="_blank">User Privacy Notice</a></label>
				    </div>
					<input type="submit" class="btn btn-primary" id="register" value="REGISTER" onClick="return password_Validation()">
			  </form>
			
			    <!--  displays the appropriate error message set in the servlet -->
				<%
					if (request.getAttribute("errorMessage") != null)
					{
				%>
					<p style="margin-top: 20px; text-align: center;"><span style="background-color: #FFFF00;">
				<%=request.getAttribute("errorMessage")%>
					</span></p>
				<% 		
					}
				%>
			
				<hr>
				<p class="sign-in-link">Already have an account? <a href="Login.jsp">Sign In</a></p>
	</div>
					
					
	<%@ include file="Footer.jsp" %>
</body>
</html>
    
    
    
    
 