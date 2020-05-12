
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>carolinasoftechhires.com - Login</title>

<%@ include file="NavBar.jsp"%> 
   
<!--  <link href="Local_IT_Hire.css" rel="stylesheet" type="text/css"> -->
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
		
    		<form method="POST" action="Login">	
				<input type="text" class="user-input" name="username" placeholder="User Name" required>
				<input type="password" class="user-input" name="password" placeholder="Password" required>
				
				<input type="submit" class="btn btn-primary" id="login" "value="LOG IN"> 
				  
			</form>
			
				<!--  displays the appropriate error message set in the servlet -->
				<%
					if (request.getAttribute("errorMessage") != null)
					{
				%>
					<p style="margin-top: 20px; text-align: center;"><span style="background-color: #FFFF00;">
				<%= request.getAttribute("errorMessage") %>
				</span></p>
				<% 		
					}
				%>
			
				<div style="text-align: center; margin-top: 12px;"><a href="ForgotPassword.jsp" style="text-align: center;">Forgot Password?</a></div>
				<hr>
				<div style="text-align: center;"><p>Don't  have an account? <a href="Register.jsp">Sign Up</a></p></div>
		
	</div>
	<%@ include file="Footer.jsp"%>	
</body>


</html>
