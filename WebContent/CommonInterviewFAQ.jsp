<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
    
<title>Template</title>
    
<%@ include file = "NavBar.jsp"%>
    
    
<!--REQUIRED-->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<!--Import your css, make sure the href matches where you put it-->
<link rel="stylesheet" href="css/template.css">
    

    
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>  
     
 

<style>


button {

	float: right;
	background-color: white; 
  	border: 1px;
  	/*padding: 5px; */
	bottom-margin: 25px;
        display: inline-block;
	text-align: center;
	cursor: pointer; 

}


  
	#illquestion1, #illquestion2, #illquestion3, #illquestion4, #illquestion5, #illquestion6, #illquestion7, #illquestion8, #illquestion9 {
	font-family:'Titillium Web', sans-serif;

	font-style: italic;
	font-size: 20px;
	color: #486E9D;
	text-decoration: underline;
}

        #question1, #question2, #question3, #question4, #question5, #question6, #question7, #question8, #question9, #question10, #question11, #question12 {
            padding:10px;
	    padding-left: 20px;
            text-align: left;
            background-color: #486E9D;
            color: white;
            font-family:'Titillium Web', sans-serif;
            border-style: solid 0px;
}

        #answer1, #answer2, #answer3, #answer4, #answer5, #answer6, #answer7, #answer8, #answer9, #answer10, #answer11, #answer12  {
            padding:60px;
            text-align: left;
            font-family: 'Titillium Web', sans-serif;
            background-color: white;
            color: #486E9D;
            display: none;
            border-style: none; /*You dont need to use "" at the end it will throw an error with the borders. Also need to use border-style instead of border*/

}



.card {
  /* Add shadows to create the "card" effect */
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
}


.card {
  padding: 2px 16px;
	width: 50%;
	position: relative;
	left: 25%;
	margin: 10px 0;
}

</style>

</head>

<body>

<div style="text-align: center; margin: 20px;">
	<h2><strong>Common Frequently Asked Questions</strong></h2>
</div>


<div class="card">

   <div class="card-header">
       12 Most Common Frequently Asked Questions by Employers
   </div>
   
<div class="card-body">
            
<div class="card-text">
<p id="question1"> 1. Tell me about yourself. <button> Click here for answer </button> </p>
<p id="answer1">This question, which when asked always occurs at the beginning of the interview, is a predictable opportunity to craft an engaging,
    intriguing executive summary of who you are professionally and why you are there. While there is no hard-and-fast rule as to how long it should be, let's say
    it should last up to a minute. If you are given this opportunity, turn it to your advantage to establish momentum. Response: The stronger the connection you
    can make between your background, knowledge, and interests, and the job at hand, the more compelling you will be as a candidate. If there is something notable
    about your personal life that adds to your candidacy or helps explain your career trajectory, add it. Otherwise, leave personal details out at this stage
    unless invited to do so</p>


<p id="question2"> 2. Why Do You Want to Work at This Company?   <button> Click here for answer </button></p>
<p id="answer2">  Beware of generic answers! If what you say can apply to a whole slew of other companies, or if your response makes you sound like every other candidate, 
you’re missing an opportunity to stand out. Zhang recommends one of four strategies: Do your research and point to something that makes the company unique that really appeals 
to you; talk about how you’ve watched the company grow and change since you first heard of it; focus on the organization’s opportunities for future growth and how you can contribute to it; 
or share what’s gotten you excited from your interactions with employees so far. Whichever route you choose, make sure to be specific. And if you can’t figure out why you’d want to work at 
the company you’re interviewing with by the time you’re well into the hiring process? It might be a red flag telling you that this position is not the right fit.


<p id="question3"> 3. Why Do You Want to Work at This Company?  <button> Click here for answer </button></p>
<p id="answer3"> Beware of generic answers! If what you say can apply to a whole slew of other companies, or if your response makes you sound like every other candidate, 
you’re missing an opportunity to stand out. Zhang recommends one of four strategies: Do your research and point to something that makes the company unique that really appeals 
to you; talk about how you’ve watched the company grow and change since you first heard of it; focus on the organization’s opportunities for future growth and how you can contribute to 
it; or share what’s gotten you excited from your interactions with employees so far. Whichever route you choose, make sure to be specific. And if you can’t figure out why you’d want to work 
at the company you’re interviewing with by the time you’re well into the hiring process? It might be a red flag telling you that this position is not the right fit.</p>


<p id="question4">4. Why Should We Hire You? <button> Click here for answer </button> </p>
<p id="answer4">This interview question seems forward (not to mention intimidating!), but if you’re asked it, you’re in luck: There’s no better setup for you to sell yourself and your skills 
to the hiring manager. Your job here is to craft an answer that covers three things: that you can not only do the work, but also deliver great results; that you’ll really fit in with the team 
and culture; and that you’d be a better hire than any of the other candidates. </p>


<p id="question5"> 5. What Do You Consider to Be Your Weaknesses? <button> Click here for answer </button></p>
<p id="answer5"> What your interviewer is really trying to do with this question—beyond identifying any major red flags—is to gauge your self-awareness and honesty. So, “I can’t meet a 
deadline to save my life” is not an option—but neither is “Nothing! I’m perfect!” Strike a balance by thinking of something that you struggle with but that you’re working to improve. 
For example, maybe you’ve never been strong at public speaking, but you’ve recently volunteered to run meetings to help you get more comfortable when addressing a crowd.</p>

<p id="question6">6.  What Are Your Greatest Strengths? <button> Click here for answer </button></p>
<p id="answer6"> Here’s an opening to talk about something that makes you great—and a great fit for this role. When you’re answering this question, think quality, not quantity. In other words, 
don’t rattle off a list of adjectives. Instead, pick one or a few (depending on the question) specific qualities that are relevant to this position and illustrate them with examples. 
Stories are always more memorable than generalizations. And if there’s something you were hoping to mention because it makes you a great candidate, but you haven’t had a chance yet, 
this would be the perfect time.</p>

<p id="question7"> 7. What Is Your Greatest Professional Achievement?  <button> Click here for answer </button></p>
<p id="answer7">Nothing says “hire me” better than a track record of achieving amazing results in past jobs, so don’t be shy when answering this interview question! A great way to do 
is by using the STAR method: situation, task, action, results. Set up the situation and the task that you were required to complete to provide the interviewer with background context 
(e.g., “In my last job as a junior analyst, it was my role to manage the invoicing process”), then describe what you did (the action) and what you achieved (the result): “In one month, 
I streamlined the process, which saved my group 10 person-hours each month and reduced errors on invoices by 25%.” </p>

<p id="question8"> 8. Tell Me About a Challenge or Conflict You’ve Faced at Work, and How You Dealt With It. <button> Click here for answer </button></p>
<p id="answer8"> You’re probably not eager to talk about conflicts you’ve had at work during a job interview. But if you’re asked directly, don’t pretend you’ve never had one. Be 
about a difficult situation you’ve faced (but without going into the kind of detail you’d share venting to a friend). “Most people who ask are only looking for evidence that
 you’re willing to face these kinds of issues head-on and make a sincere attempt at coming to a resolution,” former recruiter Rich Moy says. Stay calm and professional as you tell the 
story (and answer any follow-up questions), spend more time talking about the resolution than the conflict, and mention what you’d do differently next time to show “you’re open 
learning from tough experiences.”</p>

<p id="question9"> 9. Can You Explain Why You Changed Career Paths? <button> Click here for answer </button></p>
<p id="answer9">Don’t be thrown off by this question—just take a deep breath and explain to the hiring manager why you’ve made the career decisions you have. More importantly, 
give a few examples of how your past experience is transferable to the new role. This doesn’t have to be a direct connection; in fact, it’s often more impressive when a candidate 
can show how seemingly irrelevant experience is very relevant to the role. </p>


<p id="question10"> 10. Tell Me About a Time You Demonstrated Leadership Skills. <button> Click here for answer </button></p>
<p id="answer10"> You don’t have to have a fancy title to act like a leader or demonstrate leadership skills. Think about a time when you headed up a project, took the initiative 
to propose an alternate process, or helped motivate your team to get something done. Then use the STAR method to tell your interviewer a story, giving enough detail to paint a 
picture (but not so much that you start rambling) and making sure you spell out the result. In other words, be clear about why you’re telling this particular story and connect 
all the dots for the interviewer.</p>

<p id="question11">11. How Would Your Boss and Coworkers Describe You? <button> Click here for answer </button></p>
<p id="answer11">First of all, be honest (remember, if you make it to the final round, the hiring manager will be calling your former bosses and coworkers for references!). Then try 
to pull out strengths and traits you haven’t discussed in other aspects of the interview, such as your strong work ethic or your willingness to pitch in on other projects when needed. </p>

<p id="question12">12. Do You Have Any Questions for Us? <button> Click here for answer </button></p>
<p id="answer12"> You probably already know that an interview isn’t just a chance for a hiring manager to grill you—it’s an opportunity to sniff out whether a job is the right fit 
from your perspective. What do you want to know about the position? The company? The department? The team? You’ll cover a lot of this in the actual interview, so have a few less-common 
questions ready to go. We especially like questions targeted to the interviewer (“What's your favorite part about working here?") or the company's growth (“What can you tell me about your
 new products or plans for growth?")</p> 
             

</div>

</div>

</div>

<br><br>


 <div class="card">
    <div class="card text-center">
       <h2> Illegal Questions Employers May Ask, But Shouldn't </h2>
    </div>
    
    <div class="card-body">
	
<p id="illquestion1"> “What’s your race?”</p>
<p id="illanswer1">It is illegal for an employer to ask you questions about race or skin color. Unless appearance is a “bona fide occupational qualification” (BFOQ) – for example, if you’re 
applying for a modeling job- you cannot be required to submit a photo with an application.</p>
<p> <b> Fair questions: None. An employment application may include a space where you voluntarily indicate your race. </b></p>

<p id="illquestion2"> “What is your national origin?” </p>
<p id="illanswer2" >An interviewer cannot ask if you are a U.S. citizen, where you were born, or remark upon your accent. Unless a business case can be provided, a company can’t specify that 
English be the only language spoken on the job. 
<br> <b>Fair questions: “Are you eligible to work in the U.S. Could you, once employed, submit documentation to that effect?” Companies now require all employees to fill out an I-9 
form, in order to confirm that you’re a citizen or resident who is eligible to work. If fluency in a language other than English is a job requirement, an employer may ask how you learned that language.</b>
 </p>

<p id="illquestion3">“What is your maiden name?”</p>
<p id="illanswer3">An interviewer can’t discriminate on the basis of gender or marital status. Recruiters may not ask different questions of female and male applicants or of married and unmarried women. 
It’s also inappropriate for an employer to ask if you’re planning to have a family or have young children.
<br> <b>Fair questions: An employer can ask for your full name or whether you’ve worked under another name – in order to check your employment history. Interviewers may inquire about childcare and 
other family issues by asking: “Where do you see yourself in five years? What hours are you available to work? Do you have other responsibilities that may interfere with your ability to meet the 
requirements of the job- such as overtime or travel?” </b>
</p>


<p id="illquestion4">“How old are you?”</p>
<p id="illanswer4">The Age Discrimination in Employment Act (ADEA) protects people over the age of 40, who work in companies with more than 20 employees, from employment discrimination. Employers may 
specify an age limit for a position only in rare cases where it can be proven that age is a BFOQ. (For example, the choice of one actor over another, using age as a basis for authenticity.) In all other 
cases, an interviewer may not ask when you were born, when you graduated from high school (since most students graduate at age 17 or 18), or any other questions from which your age may easily be determined. 
Individuals under age 40 aren’t covered by the ADEA, but many states offer them some protection.
<br><b>Fair questions: “Are you the minimum age required to perform this job” (Federal allows those aged 14 and 15 to work in a limited capacity; 16 and 17-years-old can perform non-hazardous jobs.) Some job 
applications include a space for your date of birth, along with a disclaimer.</b>
</p>

<p id="illquestion5">  “Do you have any disabilities?”</p>
<p id="illanswer5"> Under Title I of the Americans with Disabilities Act (ADA), an employer may not discriminate against a qualified candidate who is disabled, and must make “reasonable accommodations” 
for physically or mentally impaired employees. The ADA also states that you can’t be asked about the existence, nature, or severity of a disability. The following questions are also unacceptable: 
“How many days were you sick last year? Have you ever filed for worker’s compensation? What prescription medications do you currently take? Are you an alcoholic? Have you ever been treated for drug abuse?”
<br> <b>Fair questions: “Can you perform the basic functions of this position with or without accommodation?” The ADA doesn’t cover illegal drug use, so it’s perfectly legal for an employer to ask whether 
you use these substances. Some companies also request all new employees to have a medical examination.</b>
</p>


<p id="illquestion6"> “What is your religion?”</p>
<p id="illanswer6"> There is no reason for an employer to ask you about your religion or about any holidays you observe.
 <br><b> Fair questions: “Weekend and holiday work is required. Will this pose any difficulties for you?” Also, Title VII of the Civil Rights Act of 1964 allows religious organizations and sectarian 
educational institutions to express religious preference when hiring.</b>
</p>

<p id="illquestion7">  “Have you ever been arrested?”</p>
<p id="illanswer7">You are innocent until proven guilty; therefore, it is illegal for an interviewer to ask if you’ve ever been arrested.
<br> <b>Fair questions: Employment applications often include questions about felony convictions, along with a disclaimer saying that a conviction won’t necessarily remove you from consideration.
In accordance with U.S. Equal Employment Opportunity Commission (EEOC) policy, employers must weigh a variety of elements when factoring convictions into hiring decisions. These include the 
nature and severity of the offense, the time that has elapsed, and whether the offense has any relation to the position advertised.</b>
 </p>


<p id="illquestion8">“What type of military discharge did you receive?”</p>
<p id="illanswer8">An employer may not ask whether you received an honorable or dishonorable discharge.
<br> <b>Fair questions: The interviewer is allowed to inquire about your rank when discharged and discuss the skills you gained while in the military.</b>
</p>

<p id="illquestion9"> “Do you belong to any organizations?”</p>
<p id="illanswer9">It’s inappropriate for an interviewer to ask whether you are affiliated with or are a member of any political, social, or religious groups- including unions.
<br><b> Fair questions: An interviewer may ask you if you’re a member of a professional organization, like the American Bar Association.</b>
</p>

 </div>
 
 </div>

<br>

 <div class="card">
            <div class="card-header">
                <h2> <B><center> How to React to Unfair Questions </B> </center></h2>
            </div>
            <div class="card-body">
              <p id="illanswer10">Try and determine what type of information an employer is looking to receive with her questions. For example, if an interviewer asks if you have children, you may deduce that she wants to know if you’d be missing work often to care for them. You might simply answer that you have no problem meeting the position
If you suspect you were denied a job because of discrimination, check with the EEOC as to the best course of action.
</p>  
               
            </div>
</div>



<br>

 <div class="card" style="margin-bottom: 100px;">
    <div class="card-body">

<p><I> Sources</I></p>

<p>
C, V. (2017, June 29). Ten Questions You Should Never Be Asked In an Interview. Retrieved April 4, 
     2020, from https://www.experience.com/advice/job-search/interviews/ 
     ten-questions-you-should-never-be-asked-in-an-interview/ 
</p>


<br>

<p>
The Muse Editor (Ed.). (2020). Your Ultimate Guide to Answering the Most Common Interview Questions. 
     Retrieved April 4, 2020, from https://www.themuse.com/advice/ 
     interview-questions-and-answers#howhearaboutposition 
</p>

   </div>
 </div>
 <script>
  $(document).ready(function(){
      $('#question1').click(function(){
    	  
          $('#answer1').slideToggle("slow");

 });
        });
$(document).ready(function(){
 $('#question2').click(function(){
  $('#answer2').slideToggle("slow");
       
  });
    });

$(document).ready(function(){
 $('#question3').click(function(){
  $('#answer3').slideToggle("slow");
       
  });
    });

$(document).ready(function(){
 $('#question4').click(function(){
  $('#answer4').slideToggle("slow");
       
  });
    });

$(document).ready(function(){
 $('#question5').click(function(){
  $('#answer5').slideToggle("slow");
       
  });
    });

$(document).ready(function(){
 $('#question6').click(function(){
  $('#answer6').slideToggle("slow");
       
  });
    });

$(document).ready(function(){
 $('#question7').click(function(){
  $('#answer7').slideToggle("slow");
       
  });
    });

$(document).ready(function(){
 $('#question8').click(function(){
  $('#answer8').slideToggle("slow");
       
  });
    });

$(document).ready(function(){
 $('#question9').click(function(){
  $('#answer9').slideToggle("slow");
       
  });
    });

$(document).ready(function(){
 $('#question10').click(function(){
  $('#answer10').slideToggle("slow");
       
  });
    });

$(document).ready(function(){
 $('#question11').click(function(){
  $('#answer11').slideToggle("slow");
       
  });
    });

$(document).ready(function(){
 $('#question12').click(function(){
  $('#answer12').slideToggle("slow");
       
  });
});

</script>
 
 

<%@ include file="Footer.jsp"%>
</body>



</html>