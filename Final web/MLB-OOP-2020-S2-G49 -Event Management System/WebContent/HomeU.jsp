<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>home</title>
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="./css/HeadFoot.css">
<link rel="stylesheet" type="text/css" href="./css/Home.css">
</head>
<body>
<!--header-->
  <img class="header" src="./images/bg51.jpg" id="img">
        
    </div>

    <!--navbar-->
 <div class="navbar1">
  <a class="hmbtn" href="Home.jsp">Home</a>
        <a class="navbtn" href="#">Services</a>
         <a class="navbtn" href="#">About Us</a>
          <a class="navbtn" href="#">Our Team</a>
 
 <a href="Home.jsp" class="rightlg" >Log out</a>
  </div>

<!--body--> 
<div class="body-block" > 
<br><br>
    <form>
                <input type="searchb" name="search" placeholder="Search.......">
                <button class="searchbtn">Search</button>
            </form>       
<br>
<div class="rowT">
  <br><br><br>
  <div class="column1" >
    <h2>Manage your event in one place</h2>
    <p>The Event19 platform saves you time by automating many of your manual event management tasks.</p>
  </div>
  <div class="column1" >
    <h2>Increase attendance</h2>
    <p>Jumpstart your event attendance with fully-branded multi-channel marketing campaigns.</p>
  </div>
  <div class="column1" >
    <h2>Ensure your success</h2>
    <p>With powerful reporting, strategic integrations, and award-winning, 24/7 customer service.</p>
  </div>
</div>



<br>

            <div class="o-adds">
                <img  src="./images/homeIm1.jpg" class="o-add" >
                <img  src="./images/homeIm3.jpg" class="o-add" >
                  <img  src="./images/homeIm2.jpg" class="o-add" >
            </div>




<br>

<div class="row">
<div class="side">
	<div class="sideI1"> 
	    <button class="side1t" >Corporate Events</button><br>
	    <button  class="side1t" >School Events</button><br>
	    <button  class="side1t" >Social Events</button><br>
	    <button  class="side1t" >Destination Weddings</button><br>
	    <button  class="side1t" >Foreign Events</button><br>
	    <button  class="side1t" >Charity Events</button><br>
	</div>
<br>
	<div class="sideI2">  <br><br> <br><br>
	    <a href="sponserAcc/AddSpo.jsp" class="addspbtn">Add Sponsorship</a> <br><br> <br><br>
	    <a href="sponserAcc/validateSpo.jsp" class="addspbtn">View Sponsorship</a>
	</div>

        </div> 

        <div class="main">
            <div class="rowInMain1">
                <div class="colm1" >
                  <h2>Destination Weddings</h2>
                  <img src="./images/wdimg1.png" class="colm1img">
                  
                  <p>Event`19 is the best company who is available in Sri Lanka to offer the destination wedding packages to the foreigners as well as locals to the foreign destinations.</p>
                </div>
                <div class="colm1" >
                  
                  <h2>Unique Scenarios</h2>
                  <img src="./images/wdimg2.png" class="colm1img">
                  <p>You will experience uniqueness throughout your event management process. As a company who think "out of the box." clients will start to experience the difference</p>
                </div>
              </div>

              <div class="rowInMain2">
                <div class="colm2">
                  <h2>Birthday Parties</h2>
                  <img src="./images/wdimg3.png" class="colm1img">
                  <p>Plan your birthday party or your kid's birthday party with Event`19 to make it fantastic. Planning a typical birthday party is easy. But planning a themed conceptual and unique birthday party is not easy.</p>
                </div>
                <div class="colm2" >
                  <h2>Anniversary</h2>
                  <img src="./images/wdimg4.png" class="colm1img">
                  <p>Anniversary is a most critical milestone in somebody's life. So we, Event`19 here to make your most important milestone of your life, beautiful, enjoyable and memorable.</p>
                </div>
              </div>
              <br><br> <br><br>
	     <a href="feedback/AddFeedback.jsp" class="addfbk">Send Feedback</a>
	   <br><br> <br><br> <br><br>
             
		</div>

</div>


</div>
<!--footer-->
<footer>
    <ul  class="list-class">
      <header class="hdr" >About us</header>
        <li><a href="aboutUSPage.html">About us</a></li>
        <li><a href="contactUSPage.html">Contact us</a></li>
        <li><a href="#">Privacy Policy</a></li>
        <li><a href="#">Terms of service</a></li>
        <li><a href="#">Media</a></li>
    </ul>
    
     <ul class="list-class">
        <header class="hdr" >Address</header>
          <li class="addr">Event`19 Pvt Ltd,<br> 103 New Kandy Rd,<br> Malabe, Sri Lanka.</li>
        <li class="addr">To contact:Call <a href="#"> 0112 76 96 86</a></li> 
    </ul>

    <ul class="list-class">
        <header class="hdr" >Download Free Apps</header>
        <br>
        <a href="https://www.apple.com/ios/app-store/" target="_blank"><img src="./images/appstore.png" class="app-link"></a>
        <a href="https://play.google.com/store?hl=en" target="_blank"><img src="./images/playstore.png" class="app-link"></a>
    </ul>

    <ul class="list-class">
        <header class="hdr" >Follow Us</header>
        <br>
        <a href="https://www.facebook.com/" target="blank" ><i class="fa fa-facebook" ></i></a>
        <a href="https://twitter.com/explore" target="blank"><i class="fa fa-twitter"></i></a>
        <a href="https://www.google.com/gplus" target="blank"><i class="fa fa-google-plus"></i></a>
        <a href="https://www.instagram.com/" target="blank"><i class="fa fa-instagram"></i></a>
    </ul>


  </div>
</footer>

</body>

<script type="text/javascript">
	
//slide show top
		var slideIndexT = 0;
		carouselT();

		function carouselT() {
								  var a;
								  var y = document.getElementsByClassName("o-add");

								  for (a = 0; a < y.length; a++) 
								  {
								  		  y[a].style.display = "none"; 
								  }
								  slideIndexT++;
								  
								  if (slideIndexT > y.length)
								  	{
								  		slideIndexT = 1
								  	}

								  y[slideIndexT-1].style.display = "block";

								  setTimeout(carouselT, 2000); // Change image every 2 seconds

							}


</script>
</html>