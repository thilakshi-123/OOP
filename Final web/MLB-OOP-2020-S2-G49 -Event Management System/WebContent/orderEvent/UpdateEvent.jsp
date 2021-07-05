<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update event</title>
 <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="../css/HeadFoot.css">
<link rel="stylesheet" type="text/css" href="../css/UpdateEvent.css">
<body>
<body>
<!--header-->
  <img class="header" src="../images/bg51.jpg" id="img">
 
     <!--navbar-->
 <div class="navbar1">
  <a class="hmbtn" href="../HomeU.jsp">Home</a>
        <a class="navbtn" href="#">Services</a>
         <a class="navbtn" href="#">About Us</a>
          <a class="navbtn" href="#">Our Team</a>
 
<a href="Home.jsp" class="rightlg" >Log Out</a>
  </div>

<!--body--> 

<div class="body-block" >
<br> 



<%
			String eventID = request.getParameter("eventID");
			String userID = request.getParameter("userID");
			String eCat = request.getParameter("eCat");
			String eCap = request.getParameter("eCap");
			String eDate = request.getParameter("eDate");
			String eTime = request.getParameter("eTime");
			String eCity = request.getParameter("eCity");
			String spMsg = request.getParameter("spMsg");
			String ebudget = request.getParameter("ebudget");
	%>
	

<form action="../updateeventservlet" method="post" class="createAccform"  >
<h2 class="u-lg-h">Update Your Event</h2>
	<table>
	
		<tr>
			<td class="form-lable" >Event ID</td>
			<td><input class="form-input" type="text" name="eventID" value="<%=eventID %>" readonly></td>
		</tr>
		<tr>
			<td class="form-lable" >UserID</td>
			<td><input class="form-input" type="text" name="userID" value="<%=userID %>" readonly></td>
		</tr>
		<tr>
			<td class="form-lable" >Category</td>
			<td><select name="eCat" class="form-input">
						<option selected="selected"><%=eCat %></option>
						<option value="Corporate Events">Corporate Events</option>
						<option value="School Events">School Events</option>
						<option value="Social Events">Social Events</option>
						<option value="Destination Weddings">Destination Weddings</option>
						<option value="Foreign Events">Foreign Events</option>
						<option value="Charity Events">Charity Events</option>
				</select></td>
		</tr>
		<tr>
		<td class="form-lable" >capacity</td>
		<td><input class="form-input" type="number" min="1" max="1000" name="eCap" value="<%=eCap %>" ></td>
	</tr>
	<tr>
		<td class="form-lable" >Date</td>
		<td><input class="form-input" type="date" name="eDate" value="<%=eDate %>" ></td>
	</tr>
	<tr>
		<td class="form-lable" >Time</td>
		<td><input class="form-input" type="time" name="eTime" value="<%=eTime %>" ></td>
	</tr>
	<tr>
		<td class="form-lable" >eCity</td>
		<td><select class="form-input" name="eCity">
						<option selected="selected" ><%=eCity %></option>
									<option>Ampara</option>
									<option>Anuradhapura</option>
									<option>Badulla</option>
									<option>Batticaloa</option>
									<option>Colombo</option>
									<option>Galle</option>
									<option>Gampaha</option>
									<option>Hambantota</option>
									<option>Jaffna</option>
									<option>Kalutara</option>
									<option>Kandy</option>
									<option>Kegalle</option>
									<option>Kurunegala</option>
									<option>Mannar</option>
									<option>Matale</option>
									<option>Matara</option>
									<option>Monaragala</option>
									<option>Mulativu</option>
									<option>Nuwara Eliya</option>
									<option>Polonnaruwa</option>
									<option>Puttalam</option>
									<option>Ratnapura</option>
									<option>Trincomalee</option>
									<option>Vavuniya</option>
									<option>Kilinochchi</option>
				</select></td>
	</tr>
	<tr>
		<td class="form-lable" >Special messages</td>
		<td><textarea class="form-input-msg"  name="spMsg" ><%=spMsg %></textarea></td>
	</tr>
	<tr>
		<td class="form-lable" >Estimated budget</td>
		<td><input class="form-input" type="text" name="ebudget" value="<%=ebudget %>" readonly></td>
	</tr>
		
	</table>
	<br>
	<button type="submit" class="form-submit">Confirm</button>
	</form>
<br><br>
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
        <a href="https://www.apple.com/ios/app-store/" target="_blank"><img src="../images/appstore.png" class="app-link"></a>
        <a href="https://play.google.com/store?hl=en" target="_blank"><img src="../images/playstore.png" class="app-link"></a>
    </ul>

    <ul class="list-class">
        <header class="hdr" >Follow Us</header>
        <br>
        <a href="https://www.facebook.com/" target="blank" ><i class="fa fa-facebook" ></i></a>
        <a href="https://twitter.com/explore" target="blank"><i class="fa fa-twitter"></i></a>
        <a href="https://www.google.com/gplus" target="blank"><i class="fa fa-google-plus"></i></a>
        <a href="https://www.instagram.com/" target="blank"><i class="fa fa-instagram"></i></a>
    </ul>


</footer>

</body>
</html>