<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1">
<title>carolinasoftechhires.com - Forum</title>
<%@ include file="NavBar.jsp" %>

<!--REQUIRED-->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<!--Import your css, make sure the href matches where you put it-->
<link rel="stylesheet" href="css/template.css">   

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>  
<script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js" data-auto-replace-svg="nest"></script>
    
	
<style> 

body{
	background-color: #737e9c !important;
	/* background-color: #f8f9fa; */
	width: aut0;
	font-family: 'Titillium Web', sans-serif; 
}

.page-heading{
	text-align: center;	
}

.card-header {
  background-color: #ced4da !important; 
  /* background-color: #dee2e6 !important;  */
}

h2{
	font-size: 3em;
	margin: auto;
	color: #343a40;
}

/*add full-width input fields*/ 
    input[type=text]
   { 
        width: 100%; 
        padding: 12px 20px; 
        margin: 8px 0; 
        display: inline-block; 
        border: 2px solid #ccc; 
        box-sizing: border-box; 
    } 
    
   label {
		display: block;
	}
   
    
    /*add padding to container elements*/ 
    .container { 
        padding: 16px;
        width: 50%;
    } 
    
    
    /*define the modal’s background*/ 
      
    .modal { 
        display: none; 
        position: fixed; 
        z-index: 1; 
        left: 0; 
        top: 0; 
        width: 100%; 
        height: 100%; 
        overflow: scroll; 
        background-color: rgb(0, 0, 0); 
        background-color: rgba(0, 0, 0, 0.4);
        padding-top: 60px; 
        data-backdrop="static";
    } 
    
    /*define the modal-content background*/ 
      
    .modal-content { 
        background-color: #fefefe;
        width: 55%;  
        margin: 5% auto 15% auto; 
        border: 1px solid #888; 
        
    } 
    
    /*define the close button*/ 
      
    .close { 
        position: absolute; 
        right: 35px; 
        top: 15px; 
        color: #000; 
        font-size: 40px; 
        font-weight: bold; 
    } 
    
    /*define the close hover and focus effects*/ 
    
    .close:hover, 
    .close:focus { 
        color: red; 
        cursor: pointer; 
    } 
  
    .open-forum-page {
	background-color: #f8f9fa;
	border-radius: 10px;
	padding: 10px 50px;
	width: 70%;
	margin: auto;
	margin-top: 5%;
	margin-bottom: 10%;

} 

#username {
	float: left;
}

#time {
	float: right;
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
<div class="open-forum-page">
		<hr>
		<div class="page-heading">
			<h2>Open Forum Discussion</h2>
			
			<div style="text-align: center; padding: 10px;">
				<p>The purpose of this page is to provide an environment for employees and employers to share their professional advice and personal experience in an open forum.  Only logged in users can post and comment.  Click <a href="Register.jsp">here</a> to create your account today and join in the discussion.</p>
        	</div>
        </div>
        
		<hr>
	
	<form>
			<%
				if (request.getAttribute("errorMessage") != null)
				{  
			%>
				<p><span style="background-color: #FFFF00">
					<%=request.getAttribute("errorMessage")%>
				</span></p>
			<% 		
				}
			%>
			<!--  Only allow logged in users to create a new post -->
			<% 
		 		if (session.getAttribute("username") != null)
		 		{
		 	%>
 				<div style="text-align: center"> 
 					<button style="background-color: #28a745; width: 20%;" class="addPost btn btn-primary" type="button" onclick="ShowModalPost()" data-userid=${user.id} data-target="#addPost">Create New Post</button>
				</div>
			<%
		 		}
			%>	
	
	<c:forEach items="${postList}" var="post">
	
	<div style="margin: 40px;" class="card text-center border-secondary mb-3">
            <div class="card-header text-left">
            	<div id="username">
                	Created By: ${post.firstName} ${post.lastName} <c:if test="${not empty post.userCompany}"><%=" - "%>${post.userCompany}</c:if>
                </div>
                <div id="time">${post.timestamp.toString()}</div>
            </div>
            <div class="card-body text-center">
                <h3 class="card-title">${post.title}</h3>
                <p class="card-text">${post.body}</p>
                <% 
			 		if (session.getAttribute("username") != null)
			 		{
			 	%>
                	<button type="button" class="addComment btn btn-primary btn-sm" onclick="ShowModalComment(this)" data-postid=${post.post_id} data-userid=${user.id} data-target="#addComment">Comment</button>
            	<%  } %>
            </div>
            
            <!-- Start of comments for the post -->
            <c:if test="${post.comments.size() > 0 }">
           
	            <c:forEach items="${post.comments}" var="comment">
		            <div class="card-header text-left">
		            	<div id="username">
		                	${comment.firstName} ${comment.lastName} <c:if test="${not empty comment.userCompany}"><%=" - "%>${comment.userCompany}</c:if>
		                </div>
		                <div id="time">${comment.timestamp.toString()}</div>
		            </div>
		            <div class="card-body text-left">
		            	<i class="far fa-comment" style="padding-right: 15px;"></i>${comment.body}
		            </div>
	            </c:forEach>
	            
            </c:if>
            
     </div>
        
	</c:forEach>
	
	</form>
</div>

				
	
  <!-- Form for creating new comment -->
    
    <div id="id01" class="modal"> 
        <span onclick="CancelComment()" class="close" title="Close Modal">×</span> 
        <form class="modal-content animate" id="commentform" style="width: 50%; padding: 20px;"> 
            <div class="container"> 
            
                <label style="line-height: 2;"><b>Comment</b></label>
                <textarea style="width: 100%; height: 180px;"  autofocus id="comment" name="comment" placeholder= "Enter Comment Here..." form="commentform" required></textarea>
  		  		
  				<input type="hidden" id="userid" name="userid">
  				<input type="hidden" id="postid" name="postid">
  				
  				
                <div style="width: auto; text-align:center;"> 
                     
                    <button type="submit" id="submitcommentbtn" class="btn btn-primary">Submit</button>
                    <button type="button" onclick="CancelComment()" class="btn btn-secondary">Cancel</button> 
                    
                </div>
                
            </div> 
        </form> 
    </div> 
    
    <!-- Form for creating new post -->
    
    <div id="id02" class="modal"> 
        <span onclick="CancelPost()" class="close" title="Close Modal">×</span> 
        <form class="modal-content animate" id="postform" style="width: 50%; padding: 20px;"> 
            <div class="container"> 
            
                <label style="line-height: 2;"><b>Subject</b></label>
                <textarea style="width: 100%; height: 40px;" autofocus id="title" name="title" placeholder= "Enter Subject Here..." form="postform" required></textarea>
  		  		
  		  		<label style="line-height: 2;"><b>Post</b></label>
                <textarea style="width: 100%; height: 180px;" autofocus id="postbody" name="postbody" placeholder= "Enter Post Here..." form="postform" required></textarea>
  		  		
  		  		
  				<input type="hidden" id="userid" name="userid">
  				
  				
                <div style="width:auto;text-align:center;">
                	
                    <button type="submit" id="submitpostbtn" class="btn btn-primary">Submit</button> 
                    <button type="button" onclick="CancelPost()" class="btn btn-secondary">Cancel</button>   
                    
                </div>
                
            </div> 
        </form> 
    </div> 
  
    

<!--close the modal by just clicking outside of the modal-->
    <script> 
    
    
        //var modal = document.getElementById('id01'); 
        
        // event handler for add comment button
        $(document).ready(function() {
      	  $('.addComment').on('click', function() {
      	  	  
      		// get the data from the comment button  
      		var user_id = $(this).data('userid');
      		var post_id = $(this).data('postid');
      		
      		
      		// store it in value attribute of the div id
      		$('#postid').val(post_id);
      		$('#userid').val(user_id);
      		
      		$('#postid').html(post_id);
      		$('#userid').html(user_id);
      		
      		//alert('Post ID = ' + $('#postid').val() + ', User ID = ' + $('#userid').val());
      	    
      	  });
      	  
      	
      	  
      	  // event handler for comment submit button
      	$('#submitcommentbtn').on('click', function() {
 
     	   var comment = $('#comment').val();
     	   var post_id = $('#postid').val();
     	   var user_id = $('#userid').val();
     	   
     	   //alert('Comment = ' + comment);
     	   //alert('Post ID = ' + $('#postid').val() + ', User ID = ' + $('#userid').val());
     	   
     	   if (comment == '' ) {
     		   
     		   e.preventDefault();
     		   
     	   }
     	   
     	   // call the servlet with ajax
     	   $.ajax({
     	    url:"/CarolinaSoftechHires/ForumComment",
     	    type : "POST",
     	    data:{postid: post_id, userid: user_id, comment: comment},
     	    //success: function(response) {
     	    success: function(result) {
     	    	
     	    	//alert('Comment added');
                 
             },
             //error: function(jqXHR, e) {
             error: function(jqxhr, status, exception) {
                 //alert('Exception: ', exception);
                 
             }
  
     	   });
     	  
     });
      	   	  
      	
   });
      	
   // event handler for add post button
   $(document).ready(function() {       
     	  $('.addPost').on('click', function() {
     	  	  
     		// get the data from the comment button  
     		var user_id = $(this).data('userid');
     		
     		//store it in value attribute of the div id
     		
     		$('#userid').val(user_id);
     		
     		$('#userid').html(user_id);
     		
     		//alert('User ID = ' + $('#userid').val());
     	    
     	  }); 
     	  
     	   // event handler for post submit button
        	$('#submitpostbtn').on('click', function() {
   
       	   var title = $('#title').val();
       	   var post_body = $('#postbody').val();
       	   var user_id = $('#userid').val();
       	   
       	   if ((title == '' ) || (post_body == '')) {
  		   
  		   	  e.preventDefault();
  		   
  	       }
       	   
       	   //alert('Title = ' + title);
       	   //alert('Post Body = ' + post_body);
       	   //alert('User ID = ' + $('#userid').val());
       	   
       	   
       	   // call the servlet with ajax
       	   $.ajax({
       	    url:"/CarolinaSoftechHires/ForumPost",
       	    type : "POST",
       	    data:{userid: user_id, title: title, postbody: post_body},
       	    //success: function(response) {
       	    success: function(result) {
       	    	
       	    	//alert('Post added');
                   
               },
               //error: function(jqXHR, e) {
               error: function(jqxhr, status, exception) {
                   //alert('Exception: ', exception);
                   
               }

       	   });
       	   
       });
	   
	   
   });   
	   
  
        function ShowModalComment(elem) {
        	document.getElementById('id01').style.display='block';
        	
        }
        
        function ShowModalPost(elem) {
        	document.getElementById('id02').style.display='block';
        	
        }
        
        function CancelComment() { 
        	
        	document.getElementById('id01').style.display='none';
        }
        
		function CancelPost() { 
        	
        	document.getElementById('id02').style.display='none';
        }
        
        
        window.onclick = function(event) {
        	
            if (event.target == modal) {
                modal.style.display = "none"; 
            } 
        } 
               
        
    </script>  
    
<%@ include file="Footer.jsp" %>
</body>
</html>