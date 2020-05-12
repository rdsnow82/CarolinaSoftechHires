<!DOCTYPE html>
<html lang="en">


<head>
    <meta charset="UTF-8">
    <title>NavBar</title>
    
<!--REQUIRED-->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"> 
<!--Import your css, make sure the href matches where you put it-->
<link rel="stylesheet" href="css/template.css">
        

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        

 <style>
.logo-image{
    width: 46px;
    height: 46px;
    border-radius: 50%;
    overflow: hidden;
    margin-top: -6px;
    margin-right: 25px;
}
</style>

<!--  Prevents back button use -->
<script type="text/javascript">
function preback() {window.history.forward();}
setTimeout("preback()", 0);
window.onunload=function() {null};
</script>

</head>
<body>
 
<script type="text/javascript">
    $(document).ready(function () {
        var url = window.location;
        $('li.nav-item a[href="'+ url +'"]').parent().addClass('active');
        $('li.nav-item a').filter(function() {
             return this.href == url;
        }).parent().addClass('active');
    });
</script>    

<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <a class="navbar-brand" href="/">
        
    	<a href="http://www.carolinasoftech.com" target="_blank"><img src="Images/cs_logo.jpg" alt="Carolina Softech Logo" class="logo-image"></a>
    </a>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="HomePage.jsp">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<%=request.getContextPath()%>/ForumPost">Open Forum</a>
            </li>
            
            
            <li class="nav-item dropdown">            
        	
        	<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
        	Career Journey
        	</a> 
        		
        		<div class="dropdown-menu" aria-labelledby="navbarDropdown">
          		<a class="dropdown-item" href="ResumeTemplates.jsp">Resume Templates</a>
          		<a class="dropdown-item" href="CoverLetterTemplates.jsp">Cover Letter Templates</a>
          		<a class="dropdown-item" href="CommonInterviewFAQ.jsp">Interview FAQs</a>
        		</div>
      		
      	    </li>
      		
            
        </ul>
        
        <!-- Show logout button and welcome message if user is logged in -->
        <%
  		if ((session.getAttribute("username") != null))
  		{
  		%>
	        <form class="form-inline my-2 my-lg-0" method="post" action="Logout">
	            <div style="padding-right: 20px; font-size: 125%;">Welcome <%=session.getAttribute("firstName")%></div>
	    		<button class="btn btn-success my-2 my-sm-0" type="submit">Logout</button>	
   			</form>
	    <%
  		} else {
	    %>  
	    
	    	<form class="form-inline my-2 my-lg-0">
	            <button class="btn btn-success my-2 my-sm-0 mr-3" type="submit" formaction="Login.jsp">Sign In/Login</button>
	            <button class="btn btn-success my-2 my-sm-0" type="submit" formaction="Register.jsp">Register</button>
	        </form>
	    
	    	
	    <% } %> 
            
        
    </div>
</nav>

  
</body>
</html>