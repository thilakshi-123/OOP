<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<head>
<meta charset="ISO-8859-1">
<title>Payment details</title>
 <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="./css/HeadFoot.css">
<link rel="stylesheet" type="text/css" href="./css/paymentDetails.css">
</head>
<body>
<!--header-->
  <img class="header" src="./images/bg51.jpg" id="img">
    

    <!--navbar-->
 <div class="navbar1">
  <a class="hmbtn" href="Home.jsp">Home</a>
        <a class="navbtn" href="#">Services</a>
         <a class="navbtn" href="#">About Us</a>
          <a class="navbtn" href="#">Our Team</a>
 
<a href="Home.jsp" class="rightlg" >Log Out</a>
  </div>


<!--body-->  
<div class="row">
  <div class="side" >
    <div >
      <img src="./images/Upropic.png"  class="proimg">
      </div>
            <br><br>
    <a href="orderEvent/CreateOrder.jsp" class="userMenu" >Create New Event Order</a><br><br>
    <a href="orderEvent/FindEvent.jsp" class="userMenu" >View My Orders</a><br><br>
</div>
<div class="main" >
    <h1>Payment Details</h1>
      <table class="dettable" >
	<c:forEach var="pay" items="${paymentDetails}">
	
	<c:set var="receiptNum" value="${pay.receiptNum}"/>
	<c:set var="userID" value="${pay.userID}"/>
	<c:set var="amount" value="${pay.amount}"/>
	<c:set var="cardNum" value="${pay.cardNum}"/>
	<c:set var="cardExpDate" value="${pay.cardExpDate}"/>
	<c:set var="payDate" value="${pay.payDate}"/>
	
	<tr>
		<td  class="detlable" >Receipt Number</td>
		<td class="detout">${pay.receiptNum}</td>
	</tr>
	<tr>
		<td  class="detlable" >User ID</td>
		<td class="detout">${pay.userID}</td>
	</tr>
	<tr>
		<td  class="detlable"  >Amount</td>
		<td class="detout"  >${pay.amount}</td>
	</tr>
	<tr>
		<td  class="detlable" >Card Number</td>
		<td class="detout" >${pay.cardNum}</td>
	</tr>
	<tr>
		<td  class="detlable" >Card Expire Date</td>
		<td class="detout">${pay.cardExpDate}</td>
	</tr>
	<tr>
		<td  class="detlable" >Payment Date</td>
		<td class="detout">${pay.payDate}</td>
	</tr>

	</c:forEach>
	</table>

<br><br>

<a href="HomeU.jsp" class="paybtn" >Done!</a>
<br><br>
</div>
</div>
<!--footer-->

<footer>
    <ul  class="list-class">
      <header class="hdr" >About us</header>
        <li><a href="#">About us</a></li>
        <li><a href="#">Contact us</a></li>
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
</html>