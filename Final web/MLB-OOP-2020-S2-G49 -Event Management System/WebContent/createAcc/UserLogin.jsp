<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="../css/HeadFoot.css">
<link rel="stylesheet" type="text/css" href="../css/UserLogin.css">
</head>
<body>
<!--header-->
  <img class="header" src="../images/bg51.jpg" id="img">
        
    </div>

    <!--navbar-->
 <div class="navbar1">
  <a class="hmbtn" href="../Home.jsp">Home</a>
        <a class="navbtn" href="#">Services</a>
         <a class="navbtn" href="#">About Us</a>
          <a class="navbtn" href="#">Our Team</a>
 
<a href="CreateAccount.jsp" class="rightlg" >Sign Up</a>
  </div>


<!--body-->  
<div class="body-block" >
<br>
  <form action="../loginservlet" method="post" class="createAccform">
 	<h2 class="u-lg-h">Login</h2>
 	<table class="form-table" >
			<tr>
				<td><label class="form-lable">User Name</label></td>
				<td><input type="text" name="username" class="form-input"></td>
			</tr>
			<tr>
				<td><label class="form-lable">password</label></td>
				<td><input type="password" name="upass" id="pswd1" class="form-input"> <a  class="psBtn"><i class="fa fa-eye-slash" id="faEye1" onclick="showpw1()"></i></a></td>
			</tr>
</table>
  <button type="submit" name="submit" class="form-submit">Login</button>
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
</body><script type="text/javascript">
//show password1

function showpw1()
  {
     var pw1 = document.getElementById("pswd1"), ey1 =document.getElementById('faEye1')

     if (pw1.type === "password") 
     { 
       pw1.type = "text";
       ey1.className = 'fa fa-eye'

     } else
      {
        pw1.type = "password";
        ey1.className = 'fa fa-eye-slash'
     }
 }
 
 </script>
</html>