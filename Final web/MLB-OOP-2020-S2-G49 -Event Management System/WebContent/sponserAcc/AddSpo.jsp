<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Sponsorship</title>
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="../css/HeadFoot.css">
<link rel="stylesheet" type="text/css" href="../css/AddSpo.css">
</head>
<body>
<!--header-->
  <img class="header" src="../images/bg51.jpg" id="img">
 

    <!--navbar-->
 <div class="navbar1">
  <a class="hmbtn" href="../Home.jsp">Home</a>
        <a class="navbtn" href="#">Services</a>
         <a class="navbtn" href="#">About Us</a>
          <a class="navbtn" href="#">Our Team</a>
 
<a href="createAcc/UserLogin.jsp" class="rightlg" >Sign in</a>
  </div>
<!--body-->  
<div class="body-block" >
<br>

  <form action="../createspocervlet" method="post" class="createAccform">
    <h2 class="u-lg-h">Add Sponsorship</h2>
     
    <table class="form-table" >
      <tr>
        <td><label class="form-lable">company name</label></td>
        <td><input type="text" name="cname" class="form-input" ></td>
      </tr>
      <tr>
        <td><label class="form-lable">company address</label></td>
        <td><input type="text" name="caddress"  class="form-input"></td>
      </tr>
      <tr>
        <td><label class="form-lable">Email</label></td>
        <td><input type="text" name="cemail"    placeholder="abc@gmail.com"  class="form-input"></td> 
      </tr>
      <tr>
        <td><label class="form-lable">Amount</label></td>
        <td><input type="text" name="camount" class="form-input" ></td>
      </tr>
      <tr>
        <td><label class="form-lable">Time from</label></td>
        <td><input type="date" name="tmfrom" class="form-input" ></td>
      </tr>
      <tr>
        <td><label class="form-lable">Time to</label></td>
        <td><input type="date" name="tmto"  class="form-input"></td>  
      </tr>
      
    </table>
  <button type="submit" name="submit" class="form-submit" >Submit</button>
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