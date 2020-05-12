<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>ChangePasswordPage</title>

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

</head>

<body>
<div class="form-page">
	<div class="forgot-password-page-heading">
    	<h3><strong>Password Change</strong></h3>
    </div>
	<div class="registration-form">
	  <form method="POST" action="ResetPassword">
					
		  <div class="user-password">
			  <input type="password" id="password" class="user-input" name="password" placeholder="Password (Min. 8)*" pattern="(?=^.{8,26}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" required>
			  <input type="password" id="confirmPassword" class="user-input" name="confirm-password" placeholder="Confirm Password*" pattern="(?=^.{8,26}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" required>
	   		  
	   		  <p class="hint"><strong>Password must include at least one: Uppercase Letter and Special Character</strong></p>
	   		  
		  </div>
		      <input type="submit" class="btn btn-primary" id="update-password" name="update-password" value="UPDATE" onClick="return password_Validation()">
	  </form>
	  
	        <!--  displays the appropriate message from servlet -->
			<%
				if (request.getAttribute("errorMessage") != null)
				{
					session.setAttribute("resetUser", null);
				%>
					<p style="text-align: center; margin-top: 12px;"><span style="background-color: #FFFF00">
				<%= request.getAttribute("errorMessage") %>
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
