<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Event details</title>
 <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="./css/HeadFoot.css">
<link rel="stylesheet" type="text/css" href="./css/EventDetails.css">
<body>
<body>
<!--header-->
   <img class="header" src="./images/bg51.jpg" id="img">
     

    <!--navbar-->
 <div class="navbar1">
  <a class="hmbtn" href="HomeU.jsp">Home</a>
        <a class="navbtn" href="#">Services</a>
         <a class="navbtn" href="#">About Us</a>
          <a class="navbtn" href="#">Our Team</a>
 
<a href="Home.jsp" class="rightlg" >Log Out</a>
  </div>

<!--body--> 
<div class="row">
  <div class="side" >
    <div >
      <img src="images/Upropic.png"  class="proimg">
      </div>
            <br><br>
		<a href="#" class="userMenu" >My User Account</a><br><br>
		<a href="orderEvent/FindEvent.jsp"  class="userMenu" >View My orders</a>
	
	</div>
<div class="main" >
		<h1>My orders</h1>
			<table class="dettable" >
				<c:forEach var="ev" items="${eventDetails}">
					
					<c:set var="eventID" value="${ev.eventID}"/>
					<c:set var="userID" value="${ev.userID}"/>
					<c:set var="eCat" value="${ev.eCat}"/>
					<c:set var="eCap" value="${ev.eCap}"/>
					<c:set var="eDate" value="${ev.eDate}"/>
					<c:set var="eTime" value="${ev.eTime}"/>
					<c:set var="eCity" value="${ev.eCity}"/>
					<c:set var="spMsg" value="${ev.spMsg}"/>
					<c:set  var="ebudget" value="${ev.ebudget}"/>
				
					<tr>
						<td class="detlable">Event ID</td>
						<td class="detout">:     ${ev.eventID}</td>
					</tr>
					<tr>
						<td class="detlable">User ID</td>
						<td class="detout">:     ${ev.userID}</td>
					</tr>
					<tr>
						<td class="detlable">Event Category</td>
						<td class="detout">:     ${ev.eCat}</td>
					</tr>
					<tr>
						<td class="detlable">Seat Capacity</td>
						<td class="detout">:     ${ev.eCap}</td>
					</tr>
					<tr>
						<td class="detlable">Event Date</td>
						<td class="detout">:     ${ev.eDate}</td>
					</tr>
					<tr>
						<td class="detlable">Event Time</td>
						<td class="detout">:     ${ev.eTime}</td>
					</tr>
					<tr>
						<td class="detlable">City</td>
						<td class="detout">:     ${ev.eCity}</td>
					</tr>
					<tr>
						<td class="detlable">special Messages</td>
						<td class="detout">:     ${ev.spMsg}</td>
					</tr>
					<tr>
						<td class="detlable">Estimated budget</td>
						<td class="detout">:     ${ev.ebudget}</td>
					</tr>
					</c:forEach>
			</table>
	
	

<c:url value="orderEvent/UpdateEvent.jsp" var="eventupdate">
					<c:param name="eventID" value="${eventID}"/>
					<c:param name="userID" value="${userID}"/>
					<c:param name="eCat" value="${eCat}"/>
					<c:param name="eCap" value="${eCap}"/>
					<c:param name="eDate" value="${eDate}"/>
					<c:param name="eTime" value="${eTime}"/>
					<c:param name="eCity" value="${eCity}"/>
					<c:param name="spMsg" value="${spMsg}"/>
					<c:param name="ebudget" value="${ebudget}"/>
</c:url>
<a href="${eventupdate}">
	<input type="button" name="update" value="UpdateEvent" class="updatebtn">
</a>


<c:url value="orderEvent/DeleteEvent.jsp" var="eventdelete">
					<c:param name="eventID" value="${eventID}"/>
					<c:param name="userID" value="${userID}"/>
					<c:param name="eCat" value="${eCat}"/>
					<c:param name="eCap" value="${eCap}"/>
					<c:param name="eDate" value="${eDate}"/>
					<c:param name="eTime" value="${eTime}"/>
					<c:param name="eCity" value="${eCity}"/>
					<c:param name="spMsg" value="${spMsg}"/>
					<c:param name="ebudget" value="${ebudget}"/>
	</c:url>
	
<a href="${eventdelete}">
	<input type="button" name="delete" value="Delete Event" class="deletebtn">
</a>
<a href="makePay/insertPayment.jsp" class="paybtn" >Make Payment</a>
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


</footer>
</body>
</html>