<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="description" content="Forgot Pasword page for carolinasoftechhires.com">
<meta charset="utf-8">
<title>ForgotPasswordPage</title>

<%@ include file="NavBar.jsp" %>
<link href="CarolinaSoftechHires.css" rel="stylesheet" type="text/css">


<!--REQUIRED-->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<!--Import your css, make sure the href matches where you put it-->
<link rel="stylesheet" href="css/template.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>  
    

<!--  Prevents back button use -->
<script type="text/javascript">
function preback() {window.history.forward();}
setTimeout("preback()", 0);
window.onunload=function() {null};
</script>
</head>

<body>
<div class="form-page">
		
	  	<div class="forgot-password-page-heading">
			<h3><strong>Forgot Password</strong></h3>
        </div>	
		<div class="hint" style="margin-bottom: 15px;"><strong>Please enter your username below to change your password.</strong></div>
		<div class="registration-form">
	  		<form method="GET" action="ResetPassword">
      			<input type="text" class="user-input" name="username" id="username" placeholder="Username" required>
			  	<input type="submit" class="btn btn-primary" id="next-button" name="next-button" value="NEXT">
			</form>
			
			<!--  displays the appropriate error message set in the servlet -->
			<%
				if (request.getAttribute("errorMessage") != null)
				{
					session.setAttribute("resetUser", null);
					
			%>
				<p style="text-align: center; margin-top: 12px;"><span style="background-color: #FFFF00"><%=request.getAttribute("errorMessage")%>
				</span></p>
			<% 		
				}
			%>
			
			<hr>
				<p class="sign-in-link">Already have an account? <a href="Login.jsp">Sign In</a></p>
		</div>
	 
	</div>

<%@ include file="Footer.jsp" %>
</body>
</html>





