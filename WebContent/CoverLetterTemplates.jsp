<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="description" content="Cover Letters">
<meta charset="utf-8">

<title>CoverLetter</title>
     
<%@ include file = "NavBar.jsp"%>

<!--REQUIRED-->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<!--Import your css, make sure the href matches where you put it-->
<link rel="stylesheet" href="css/template.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>  
     
 
<head>

<style>


body{
	
	background-color: #FAFAF9;
	font-family: 'Titillium Web', sans-serif;

}



.intro , .heading, .greeting, .coverlink, img {
  /* Add shadows to create the "card" effect */
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
}

/*  On mouse-over, add a deeper shadow */
.card:hover {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}

/* Add some padding inside the card container */

 .heading, .body, .coverlink, .card {
  	padding: 2px 16px;
	width: 50%;
	position: relative;
	left: 25%;
	margin: 10px 0;
}


.intro  {
	padding: 2px 16px;
        width: 50%;
        position: relative;
	height: 220px;
	margin: 20px auto;
	box shadow:5px 5px;
        
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

/* Extra small devices (phones, less than 768px) */
/* No media query since this is the default in Bootstrap */

/* Small devices (tablets, 768px and up) */
@media (min-width: @screen-sm-min) { ... }

/* Medium devices (desktops, 992px and up) */
@media (min-width: @screen-md-min) { ... }

/* Large devices (large desktops, 1200px and up) */
@media (min-width: @screen-lg-min) { ... }



@grid-columns:              12;
@grid-gutter-width:         30px;
@grid-float-breakpoint:     768px;


// Creates a wrapper for a series of columns
.make-row(@gutter: @grid-gutter-width) {
  // Then clear the floated columns
  .clearfix();

  @media (min-width: @screen-sm-min) {
    margin-left:  (@gutter / -2);
    margin-right: (@gutter / -2);
  }

</style>

</head>

<body>



<br>
<br>
<p><h1><center> Cover Letter Template </center></h1></p>


<div class  = "intro">
<p>
 The cover letter is a very important step in your Career Journey. It is your way of introducing yourself to a potential employer in such a way that makes you stand out from the crowd. Your cover letter is not a repeat of your resume. 
It is a quick synopsis of what you can contribute to the position in comparison to what they are looking for. The following illustrations will serve as guidance for how to format your cover letter. 
The cover letter can be broken down into three parts: The Heading, The Body, and The Closing). For this reference, the Closing will be included as part of the Body. Below there are several references to help you with 
building your Cover Letter. Check out the video and other reference material below.   
</p>
</div>


   <div class = "iframe-container">

	<iframe width= "600" height="600" src="https://www.youtube.com/embed/ycKMs2FDbs0" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
  </div>      

      
<br>


 <div class="card">
            <div class="card-header">
            <p><h3><center> Heading</h3></center></p>
            </div>
            <div class="card-body">
<p>
     The Heading should include contact information such as the Name, Address, Contact Information, Date, Recipient Name and Address. This information should be in block form and should include your information
    as well as the potential employer information.
</p>        
          </div>
        </div>


<div class  = "card">
<div class="card-header">
            <p><h3><center> The Body </h3></center></p>
            </div>
 <div class="card-body">
<h5 class="card-title">
The body is the most important part of the Cover Letter. The information placed here will allow your potential employer to decide if they want to go further and look at your resume. This section would contain 4 to 5 paragraphs
that will cater to the required qualifications of the job. 
</h5>
<p>

<h5 class="card-title">Introduction Paragraph: </h5> 
<p>Briefly identify the position you are applying for and how you heard about it. If you are being referred by an an employee of the company or a mutual acquaintance, 
then you should also mention this here. Provide an overview of where you are in your career.
</p><br>
<p>
Example: I'm excited to be applying for the Business Analyst position at Cloud Clearwater. As someone with a keen eye for details and a passion for data, I thrive on turning data patterns into business solutions. 
I'm eager for the opportunity to bring my unique blend of technical skills to the Cloud Clearwater team.</p><br>

<h5 class="card-title">Skills and Qualifications:</h5> Tell them why you are the Perfect Candidate for the Company. Let them know about your relevant skills and qualifications. 
This is the crucial part of your letter. </p><br>
<p>
Example: During my previous role at Crane & Jenkins, I was responsible for developing and documenting business requirements, functional requirements, user cases, user stories, and full As-Is 
and To-Be process models for our growing health care services division. In an effort to maximize efficiencies, I spearheaded the development of new SOPs that created a 33% cost savings for the company.</p><br>

<h5 class="card-title">Character Traits: </h5>Tell them why the Company is Perfect for you. It is a good idea to mention one or two of your top qualities. This allows the reader to get a feel for your 
personality and what type of worker you are. Let them know if you are a people person. Do you have a passion for helping others. 
<p>
Example: With more than 10 years of experience as a professional Business Analyst, I understand what it takes to provide innovative strategies based on data-driven insights. I have a recognized talent 
for converting detailed analytics reports into actionable steps that focus on improving key performance indicators and facilitating stakeholder decision making. I have been commended for my clear 
communication style and my ability to translate complex data concepts into concise and meaningful reports.</p><br>

<h5 class="card-title">Connection with Company Values: </h5>If the company has a strong mission statement that you agree with, you may also want to mention it and communicate that you believe in what they are 
trying to accomplish.</p><br>

<h5 class="card-title">Closing Paragraph:</h5> End your leter by reiterating that you are confident that you would make a great fit for the job. Request that they contact you if they have any questions 
or would like to set up an interview. Thank them and reinforce your interest in this position. </p><br>

Example: Thank you for your time and consideration. I'm looking forward to learning more details about the Business Analyst position at Cloud Clearwater. I'm committed to continued growth as a data scientist, 
and I am thrilled at the opportunity to use my expertise to help Cloud Clearwater continue to deliver industry-leading solutions.
</p>

</div>
</div>
 
<div class  = "card">
<div class="card-header">
            <p><h3><center>Tips For Writing Cover Letters </h3></center></p>
            </div>
 <div class="card-body">
<h5 class="card-title">

<h5 class="card-title"> Keep it Short </h5> Your Cover Letter Should always be one page.</p><br>
<h5 class="card-title">Keep it Professional:</h5>  The tone of your letter should be professional and personable. Avoid discussing unncessary details of your persona life, 
do not ask about salary, benefits or the work schedule or other questions about the job. Only discuss these things if they have been specifically requested. </p><br>

<h5 class="card-title">Use Thoughtful Examples:</h5>  Think about what value you would actually be providing to the position and use specific examples from your own work experience. </p><br>
<h5 class="card-title">Research  the Company:</h5>  You want to show that you have done your homework on the company or institution. Show that you understand the problems the company may be facing 
and you are willing and capable of assisting. The research you have done can help you to stand out from the crowd. It can also help you determine if the position is actually right for you. </p><br>
<h5 class="card-title">Proofread:</h5> First impressions are very, very important. It is critical that your cover letter be free from errors. </p><br>
<h5 class="card-title">Always Customize it:</h5> DO NOT use the same generic cover letter for every job you apply to. It is necessary for you to adapt your cover letter specifically to the position you are applying for.  
Make sure the format of your cover letter matches the format of your resume. </p><br>
</div>
</div>

<div class  = "card">
<div class="card-header">
<h5 class="card-title"> Other Tips and Advice </h5>
</div>

<h3 class="text-center pb-3">
<br>
<button type="button" class="btn btn-outline-primary"><a href="https://www.themuse.com/advice/how-to-write-a-cover-letter-31-tips-you-need-to-know" target="_blank" > Cover letter advice from The Muse.</button> </a><h3>

<h3 class="text-center pb-3">
<button type="button" class="btn btn-outline-primary"><a href= "https://resumegenius.com/blog/cover-letter-help/cover-letter-tips" target="_blank"> Cover letter advice from ResumeGenius. </button></a></h3>
</div>
</div>



<div class="card">
<div class="card-header">
<h5 class="card-title"> Free Resume Samples from Google </h5>
</div>
<div class="card-body">
<div class="row">

<div class="col-xs-6 col-md-4" >
<div class="text-center">

<button type="button" class="btn btn-outline-primary"> <a href="https://drive.google.com/file/d/1XMdTOMSAVB0JyKb0nV_6ooIsut8YD8Eq/view?usp=sharing" target="_blank">
 		Blue Cover Letter</button>
		<img src="Images/BlueCovImg.jpg "  class="img-thumbnail" alt="bluecov" >
		</a>
</div>
</div>


<div class="col-xs-6 col-md-4">
<div class="text-center">

<button type="button" class="btn btn-outline-primary"><a href="https://drive.google.com/file/d/16601YVQ3hnMkx_208IE9tsQnlqy5mS1y/view?usp=sharing" target="_blank">
		Angelica Cover Letter </button>
		<img src="Images/AngelicaCov.jpg" class="img-thumbnail"   alt="angelcov"  >
		</a> 
</div>
</div>


<div class="col-xs-6 col-md-4" >
<div class="text-center">

<button type="button" class="btn btn-outline-primary"><a href="https://drive.google.com/file/d/1eQ7VLoOB854MWwbQk24h_PwPw2V06Tn5/view?usp=sharing" target="_blank">
		Basic Cover Letter </button>
		<img src="Images/BasicCov.jpg"  class="img-thumbnail"  alt="basicov" >
		</a> 
</div>
</div>
</div>
</div>
</div>
</div>
</div>


<div class  = "card" style="margin-bottom: 100px;">
<div class="card-header">
<h5 class="card-title"> Other Free Cover Letter Samples by Indeed.com </h5>
</div>

<div>
<p><h6><center>
You can browse free cover letter samples according to the position you are searching for on Indeed here: </p><br>

<a href="https://www.indeed.com/career-advice/cover-letter-samples"  target="_blank" >
<img border="0" alt="coverlet" src="Images/browsecoverletter.jpg" width="60%" height="50%">
</a>

</center>
</div>
</div>
</div>

<%@ include file="Footer.jsp"%>	

            
</body>
</html>