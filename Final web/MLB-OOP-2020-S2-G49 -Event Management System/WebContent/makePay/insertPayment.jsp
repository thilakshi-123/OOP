<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>make payment</title>
 <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="../css/HeadFoot.css">
<link rel="stylesheet" type="text/css" href="../css/insertPayment.css">
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
 
<a href="../Home.jsp" class="rightlg" >Log Out</a>
  </div>

<!--body--> 
<!--body--> 
<div class="row">
  <div class="side" >
    <div >
      <img src="../images/Upropic.png"  class="proimg">
      </div>
            <br><br>
		<a href="#" class="userMenu" >My User Account</a><br><br>
		<a href="../orderEvent/FindEvent.jsp"  class="userMenu" >View My orders</a>
	
	</div>
<div class="main" >
  <form action="../insertpaymentservlet" method="post" class="createAccform" onkeyup="validate();">
     <h2 class="u-lg-h">Make Payment</h2>
     
    <table class="form-table" >
      <tr>
        <td><label class="form-lable">User ID</label></td>
        <td><input type="text" class="form-input" name="userID" ><br><small id="nameErr"></small></td>
      </tr>
      <tr>
        <td><label class="form-lable">Amount</label></td>
        <td><input type="text" class="form-input" name="amount" ><br><small id="unameErr"></small></td>
      </tr>
      <tr>
        <td><label class="form-lable">Card Number</label></td>
        <td><input type="text" class="form-input" name="cardNum" ><br><small id="nicErr"></small></td>
      </tr>
      <tr>
        <td><label class="form-lable">CVV Number</label></td>
        <td><input type="text"  class="form-input"  name="cvvNum" ><br><small id="emailErr"></small> </td>
        
      </tr>
      <tr>
        <td><label class="form-lable">Card Expire date</label></td>
        <td><input type="date" class="form-input" name="cardExpDate" ><br><small id="phoneErr"></small></td>
      </tr>
    </table>
  <button type="submit"  name="submit" class="form-submit" >Confirm</button>
</form>
<br><br>
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