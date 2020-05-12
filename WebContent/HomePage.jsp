<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8">
<title>carolinasoftechhires.com - Home</title>

<%@ include file="NavBar.jsp"%>

<!--REQUIRED-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">



<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script> 

<link href="HomePageStyle.css" rel="stylesheet" type="text/css">        

<!--  Prevents back button use -->
<script type="text/javascript">
<script type="text/javascript">
function preback() {window.history.forward();}
setTimeout("preback()", 0);
window.onunload=function() {null};
</script>

</head>

<body>
	<div class="intro-heading">
		<img src="Images/What_is_Information_Technology.webp">
		<div class="intro-section-text">
		<h2>Carolina Softech Hires</h2>
		<h4>The ultimate companion for your professional journey.</h4>
			<p>On the long, winding road toward career success, there are many bumps and
detours – everything from your grueling first job to a complete shift in career
paths.</p>
	  </div>
</div>
	<div class="home-page-sections">
		
<!-----Start Copy---->
	  <div class="section trending-jobs-section">
		  <h3>Trending Jobs</h3>
		  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" data-interval="5000">
			  <ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
				  <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
				  <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
				  <li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
				  <li data-target="#carouselExampleIndicators" data-slide-to="6"></li>
				  <li data-target="#carouselExampleIndicators" data-slide-to="7"></li>
				  <li data-target="#carouselExampleIndicators" data-slide-to="8"></li>
				  <li data-target="#carouselExampleIndicators" data-slide-to="9"></li>
			  </ol>
			  <div class="carousel-inner" id="container">
				<div class="carousel-item active">
				  <img class="d-block w-100" id="image" src="https://cdn.pixabay.com/photo/2016/11/19/14/00/code-1839406_1280.jpg" alt="First slide">
					  <div class="carousel-caption d-none d-md-block">
						<h5>Software Developer</h5>
					  </div>
					<div class="overlay">
						<div class="text">Software developers need to be innovative, creative and, of course, technical in order to succeed in this field. They might write new code or fix bugs in code to make it work better. <a href="https://money.usnews.com/careers/best-jobs/software-developer" target="_blank">Read More...</a></div>
					  </div>
				</div>
				<div class="carousel-item">
				  <img class="d-block w-100" id="image" src="https://cdn.pixabay.com/photo/2016/03/09/09/22/workplace-1245776_960_720.jpg" alt="Second slide">
					<div class="carousel-caption d-none d-md-block">
						<h5>IT Manager</h5>
					  </div>
					<div class="overlay">
						<div class="text">Our increasingly digital workplace demands more IT managers, who coordinate computer-related activities for an organization. Duties include analyzing and reccomending computer needs, installing and maintaining computer hardwae and software, securing an office's network and electronic documents and searching for new technologies and upgrade oppertunities. <a href="https://money.usnews.com/careers/best-jobs/it-manager" target="_blank">Read More...</a></div>
					  </div>
				</div>
				<div class="carousel-item">
				  <img class="d-block w-100" id="image" src="https://cdn.pixabay.com/photo/2017/02/05/00/19/web-design-2038872_960_720.jpg" alt="Third slide">
					<div class="carousel-caption d-none d-md-block">
						<h5>Web Developer</h5>
					  </div>
					<div class="overlay">
						<div class="text">Web Developers use code to create everything you see on your favorite web sites, from the special effects to the search functionality. 
					  <a href="https://money.usnews.com/careers/best-jobs/web-developer" target="_blank">Read More...</a></div>
					  </div>
				</div>
				  <div class="carousel-item">
				  <img class="d-block w-100" id="image" src="https://miro.medium.com/max/2880/0*rdg1MHbby7BWV2_d.jpg" alt="Fourth slide">
					<div class="carousel-caption d-none d-md-block">
						<h5>Database Administrator</h5>
					  </div>
					<div class="overlay">
						<div class="text">While the pronunciation of the word "data" always seems to be up for debate, the importance of protecting said data is not. Database administrators set up databases according to a company's requirements, in addition to maintaining its operations and implementing the appropiate security measures. 
					  <a href="https://money.usnews.com/careers/best-jobs/database-administrator" target="_blank">Read More...</a></div>
					  </div>
				</div>
				  <div class="carousel-item">
				  <img class="d-block w-100" id="image" src="https://www.communicationmill.com/wp-content/uploads/2019/02/dredd-movie.jpg" alt="Fifth slide">
					<div class="carousel-caption d-none d-md-block">
						<h5>Information Security Analyst</h5>
					  </div>
					<div class="overlay">
						<div class="text">As concern about cybersecurity grows, so does the demand for information security analysts. It is the duty of these professionals to prepare and carry out security measures that protect a company's computer networks and systems. 
					  <a href="https://money.usnews.com/careers/best-jobs/information-security-analyst" target="_blank">Read More...</a></div>
					  </div>
				</div>
				  <div class="carousel-item">
				  <img class="d-block w-100" id="image" src="https://tr3.cbsistatic.com/hub/i/r/2018/11/08/24625137-0593-455b-bdb7-9b2395d3aeb0/resize/1200x/9e01b4a0971ce4b215f310311058e065/metamorworksistock-952679588.jpg" alt="Sixth slide">
					<div class="carousel-caption d-none d-md-block">
						<h5>Computer Systems Analyst</h5>
					  </div>
					<div class="overlay">
						<div class="text">Computer systems analysts must have a diverse skill set. The position requires information technology and business knowledge. These analysts custom design computer systems and processes for clients.
					  <a href="https://money.usnews.com/careers/best-jobs/computer-systems-analyst" target="_blank">Read More...</a></div>
					  </div>
				</div>
				  <div class="carousel-item">
				  <img class="d-block w-100" id="image" src="https://cdn.careeronestop.org/OccVids/OccupationVideos/15-1143.00.jpg" alt="Seventh slide">
					<div class="carousel-caption d-none d-md-block">
						<h5>Computer Network Architect</h5>
					  </div>
					<div class="overlay">
						<div class="text">If you ever saved something to the cloud, then you've depended on the handiwork of a computer network architect. These professionals design, build and maintain a variety of data communication networks, from expensive cloud infrastructures to smaller intranets.
					  <a href="https://money.usnews.com/careers/best-jobs/computer-network-architect" target="_blank">Read More...</a></div>
					  </div>
				</div>
				  <div class="carousel-item">
				  <img class="d-block w-100" id="image" src="https://internationalsecurityjournal.com/wp-content/uploads/2020/02/shutterstock_661113826.jpg" alt="Eighth slide">
					<div class="carousel-caption d-none d-md-block">
						<h5>Computer Systems Administrator</h5>
					  </div>
					<div class="overlay">
						<div class="text">Computer systems administrators perform duties ranging from identifying and fixing network issues to updating equipment and software.
					  <a href="https://money.usnews.com/careers/best-jobs/network-and-computer-systems-administrator" target="_blank">Read More...</a></div>
					  </div>
				</div>
				  <div class="carousel-item">
				  <img class="d-block w-100" id="image" src="https://coda.newjobs.com/api/imagesproxy/ms/niche/images/articles/Computer%20Support%20Specialist.jpg" alt="Ninth slide">
					<div class="carousel-caption d-none d-md-block">
						<h5>Computer Support Specialist</h5>
					  </div>
					<div class="overlay">
						<div class="text">A computer support specialist's job is a combination of customer service and troubleshooting. These specialists help computer owners and users troubleshoot and fix problems.
					  <a href="https://money.usnews.com/careers/best-jobs/computer-support-specialist" target="_blank">Read More...</a></div>
					  </div>
				</div>
				  <div class="carousel-item">
				  <img class="d-block w-100" id="image" src="https://learnworthy.net/wp-content/uploads/2019/10/Top-5-programming-languages-every-programmer-should-know-in-2019.jpg" alt="Tenth slide">
					<div class="carousel-caption d-none d-md-block">
						<h5>Computer Programmer</h5>
					  </div>
					<div class="overlay">
						<div class="text">Computer programmers write the code that makes software programs run. In addition to writing and converting code and maintaining and testing software and programs, a huge part of this job involves problem solving. Programmers address  issues that arise when converting programs into code and debug when necessary.
					  <a href="https://money.usnews.com/careers/best-jobs/computer-programmer" target="_blank">Read More...</a></div>
					  </div>
				</div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<br>
		</div>
<!----End Copy-->
	  <div class="section insight-section">
		  <h3>Insight</h3>
		  <div class="article">
			  <img src="Images/AppleLogo.jfif">
		    <h4>Amazon adding another 75,000 jobs</h4>
			  <p>The biggest players in tech are hoovering up talent in the midst of the coronavirus pandemic. <a href="https://www.wsj.com/articles/looking-for-a-job-big-tech-is-still-hiring-11586712423" target="_blank">Read More</a></p>
		  </div>
		  <div class="article">
			  <img src="Images/YoutubeWorker.jfif">
		    <h4>The ultimate resource hub for tech job seekers</h4>
			  <p>How to get hired in tech: From Google and Amazon to growing startups, here's everything you need to know. <a href="https://www.businessinsider.com/ultimate-resource-hub-for-tech-jobseekers-2020-4" target="_blank">Read More</a></p>
		  </div>
		  <div class="article">
			  <img src="Images/WFH.jfif">
		    <h4>The Tech Headaches of Working From Home</h4>
			  <p>Our most common work-from-home tech issues are the ones that slow down our productivity <a href="https://www.nytimes.com/2020/03/18/technology/personaltech/working-from-home-problems-solutions.html" target="_blank">Read More</a></p>
		  </div>
		  <div class="article">
			  <img src="Images/techavatar.jfif">
		    <h4>IT career goals 2020: Most-wanted technology and core skills</h4>
			  <p>AI, machine learning, and security skills: These areas of expertise will continue to be in demand, CIOs say. <a href="https://enterprisersproject.com/article/2020/1/it-career-goals-2020-top-skills" target="_blank">Read More</a></p>
		  </div>
		  <div class="article">
			  <img src="Images/jobinterview.jfif">
		    <h4>4 Tips to Help You Get a Job in Tech</h4>
			  <p>If you don't have relevant job experience, use these four tips to impress tech employers.<a href="https://www.business.com/articles/how-to-land-your-first-tech-job/" target="_blank">Read More</a></p>
		  </div>
		  <div class="article" style="margin-bottom: 100px;">
			  <img src="Images/jobHunting.jfif">
		    <h4>10 Most In-Demand Tech Jobs On Indeed In 2020</h4>
			  <p>There has been a 73.6% increase in WordPress developer job postings on Indeed through the first three months of 2020.<a href="https://www.forbes.com/sites/louiscolumbus/2020/04/08/10-most-in-demand-tech-jobs-on-indeed-in-2020/" target="_blank">Read More</a></p>
		  </div>
	  </div>
	</div>
	<%@ include file="Footer.jsp"%>	
</body>

</html>
