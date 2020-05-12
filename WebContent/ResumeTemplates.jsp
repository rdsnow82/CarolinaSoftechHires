<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
    <title>Template</title>
    
<%@ include file="NavBar.jsp"%> 

<!--REQUIRED-->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<!--Import your css, make sure the href matches where you put it-->
<link rel="stylesheet" href="css/template.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      
       
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>  
          
<meta name="viewport" content="width=device-width, initial-scale=1.0">	


<style>

body{

	background-color: #f8f9fa;
	font-family: 'Titillium Web', sans-serif;
}



p {

text-align: center;

}

.logo-image{
    width: 46px;
    height: 46px;
    border-radius: 50%;
    overflow: hidden;
    margin-top: -6px;
}


.merri, .lato, .resumeg, .card, src {
  /* Add shadows to create the "card" effect */
  box-shadow: 0 4px 8px  rgba(0,0,0,0.255);
  transition: 0.3s;
}


/*  On mouse-over, add a deeper shadow */
.card:hover {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}

/* Add some padding inside the card container */

.merri, .lato, .resumeg, .card{
  padding: 2px 16px;
	width: 50%;
	position: relative;
	left: 25%;
	margin: 15px 0;
	
}	
	

button{

  background-color: #007bff; 
  border: none;
  color: white;
  padding: 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  position: relative;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  border-radius: 10px;
	
}

	
.iframe-container{
  position: relative;
  width: 50%;
  padding: 2px 16px;
  height: 400px;
 margin: 20px auto;
 box shadow:5px 5px;

}
        

.iframe-container iframe{
  position: absolute;
  top:0;
  left: 0;
  width: 100%;
  height: 100%;
}


</style>
</head>

<body>

<br>
<br>

<div style="text-align: center; margin: 20px;">
<h1>Resume Templates</h1>
</div>


<div class  = "card">
	<div class="intro" style="margin-top: 10px">
	<p>
	Taking time to edit your resume and add relevant experience can put your application on the top of the candidate pile. Since you won't be there in person to 
	share all of your marketable attributes the first time a hiring manager sees it, your resume has to do the talking.
	</p>
	</div>
</div>

<div class = "card">
<div class="card-header text-center">
     <div style="margin: 15px"><h3>Tips For Writing Resumes</h3></div>
</div>
 <div class="card-body">
 

<h5 class="card-title" style="margin-top: 20px"> Look for keywords in the job postings: </h5> <div>The best place to start when preparing to write a resume is to carefully read the job postings 
that interest you. As you apply for different jobs, you should study each job description for keywords that show what the employer is looking for in an ideal 
candidate. Include those keywords in your resume where relevant.</div>


<h5 class="card-title" style="margin-top: 20px">Review resume examples for your industry:</h5><div style="margin-bottom: 15px"> When crafting your resume, you might study examples of resumes from your industry for 
inspiration and best practices. While there are many ways you can use resume samples, there are three main takeaways you should look for:
</div>

<ul>

<li><B> Make it simple and easy to read.</B>  Resume samples are simple and straightforward. This is because employers have a minimal amount of time to review your resume, 
so readability is key. This also means selecting a professional, clean font.</li>
<br>

<li> <B>Make it brief.</B> You’ll notice that each section of the resume sample is short and to-the-point, including the summary and experience descriptions. 
Including only the most key and relevant information means employers are able to consume more information about you, and more quickly understand 
your fitness for the role.</li>

<br>
<li><B>Include numbers.</B> You might also notice that there are often metrics included in the experience section of resume samples. This is because employers are 
highly responsive to measurable proven value. Numbers allow them to better understand the value you may bring to the position. For example, one bullet 
point under the experience description for an administrative assistant reads, “Executed processing of vendor contracts and implemented a standardized 
process, reducing contract discrepancies by 90%.” 

</ul>
<br>
<p>When using resume samples, you should keep in mind that these are not meant to be copied exactly. While you should avoid using them as a template, 
samples are useful as examples of high-quality resumes in your industry and job title.   </p><br>

</div>
</div>


   <div class = "iframe-container">
	<iframe width="560" height="315" style="border:0;" src="https://www.youtube.com/embed/twIUPaalVc8" allow="accelerometer; autoplay; 
encrypted-media; gyroscope; picture-in-picture; allowfullscreen"></iframe>
	</div>
	



<div class = "merri">

<p>
<button type="button" class="btn btn-outline-primary"><a href="https://docs.google.com/document/d/1Qq5KYsrpJc8eRTJ6VmCYrK6bKzK1zf8jRz2N0YtktyM/edit?usp=sharing" target="_blank">  
Merriweather Template </button><br>
<a><img border="1" alt="Merri" src="Images/Merriweather_Template.jpg" width="60%" height="20%">
</a>
</p>
</div>



<div class="lato">

<p>
<button type="button" class="btn btn-outline-primary"><a href ="https://docs.google.com/document/d/1itnkTWvFdsYyGNqD2NL1UgJegUhu_aV5WZ3XvWOs6q4/edit?usp=sharing" target="_blank"> 
Lato Template</button><br>
<img border="1" alt="Merri" src="Images/Lato_Template.jpg" width="60%" height="20%">
</a>
</p>
</div>




<div class="resumeg" style="margin-bottom: 100px;">
<p>
<button type="button" class="btn btn-outline-primary"><a href="https://app.resumegenius.com/resume-builder/start" target= "_blank">
 For further customization with ResumeGenius click here </button> <br>
<img border="0" alt="ResiG" src="Images/ResumeGenius.jpg" width="60%" height="20%">
</a>
</p>
</div>

<%@ include file="Footer.jsp"%>
</body>
</html>