
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="description" content="Contributors">
<meta charset="utf-8">

<title>Contributors</title>
     
<%@ include file = "NavBar.jsp"%>


<meta name="viewport" content="width=device-width, initial-scale=1.0">

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
<p><h1><center> Contributors </center></h1></p>    
<br>


 <div class="card">
      <div class="card-header">
      <p><h3><center> Developer Team</h3></center></p>
      </div>
      <div class="card-body">
<ul>

<li> <a href=https://drive.google.com/file/d/12nk-BQYmoTnNQ14xAOuUxyGbmr3SSoax/view?usp=sharing target="_blank"><B> Rebecca Snow: </B></a>Team Leader, Frontend/Backend Development </li>
<br>

<li> <a href=https://drive.google.com/file/d/1j9KJXkRQzUKBLJ2y-ktGHQlKXpI2Czda/view?usp=sharing target="_blank"><B>Denell Williams: </B></a>Frontend Development </li>

<br>
<li><a href=https://drive.google.com/open?id=177zFmYifMuHIxlA2PpioXECn4_AvDiGr  target="_blank"><B>Shanecia Clarke: </B></a>Frontend Development </li>

</ul>
    
          </div>
        </div>



<div class="card">
      <div class="card-header">
      <p><h3><center> System Analyst Team</h3></center></p>
      </div>
      <div class="card-body">

<ul>

<li><B>Mary Tulleri: </B>Team Leader</li>
<br>

<li> <B>Deepak Prasher: </B>System Analyst</li>

</ul>

          </div>
        </div>



<div class="card">
  <div class="card-header">
  <p><h3><center> SQL Team </h3></center></p>
  </div>
	<div class="card-body">
	
	<ul>
	
	<li> <B>Khadejah Sewell: </B>Team Leader </li>
	<li><B> Joshua Willis: </B>Database Developer</li>
	<li><B> Christine Lutz: </B>Database Developer</li>
	<li><B> Anu Arora: </B>Database Developer</li>
	<li><B> Adelaide Barringer: </B>Database Developer</li>
	<li><B> Grace Ngugi: </B>Database Developer</li>
	</ul>
	
	</div>
</div>



<div class="card" style="margin-bottom: 100px;">
   <div class="card-header">
   <p><h3><center> Project Managers</h3></center></p>
   </div>
   <div class="card-body">

	<ul>

		<li><B> Daniel Hernandez: </B>Team Leader, Project Manager</li>
		<br>
		
		<li> <B>Rae Hodge: </B>Assistant Project Manager </li>
		
		<br>
		<li><B> Tetiana Kuzub: </B>Assistant Project Manager </li>

   </ul>

  </div>
 </div>

<%@ include file="Footer.jsp"%>
            
</body>
</html>