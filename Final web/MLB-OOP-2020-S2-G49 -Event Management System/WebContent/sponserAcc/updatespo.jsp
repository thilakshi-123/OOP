<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update sponsorship</title>
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="../css/HeadFoot.css">
<link rel="stylesheet" type="text/css" href="../css/UpdateUser.css">
</head>
<body>
<!--header-->
  <img class="header" src="../images/bg51.jpg" id="img">
        
    </div>

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
	String sid =request.getParameter("sid");
	String cname =request.getParameter("cname");
	String caddress =request.getParameter("caddress");
	String cemail =request.getParameter("cemail");
	String camount =request.getParameter("camount");
	String tmfrom =request.getParameter("tmfrom");
	String tmto =request.getParameter("tmto");
	%>
	


<form action="../updatesponsorshipservlet" method="post" class="createAccform" >
<h4>Update Sponsorship</h4>
	<table class="form-table">
		<tr>
			<td class="form-lable" >sponsor id</td>
			<td ><input type="text" class="form-input" name="sid" value="<%=sid%>" readonly></td>
		</tr>
		<tr>
			<td class="form-lable"  >company name</td>
			<td><input class="form-input" type="text"name="cname"value="<%=cname%>"></td>
		</tr>
		<tr>
			<td class="form-lable" >company address</td>
			<td><input class="form-input" type="text" name="caddress" value="<%=caddress%>" ></td>
		</tr>
		<tr>
			<td class="form-lable" >email </td>
			<td><input class="form-input" type="text" name="cemail" value="<%=cemail%>" ></td>
		</tr>
		<tr>
			<td class="form-lable" >amount</td>
			<td> <input class="form-input" type="text" name="camount" value="<%=camount%>"></td>
		</tr>
		<tr>
			<td class="form-lable" >time from </td>
			<td><input class="form-input" type="date" name="tmfrom" value="<%=tmfrom%>"></td>
		</tr>
		<tr>
			<td class="form-lable" >time to</td>
			<td> <input class="form-input" type="date" name="tmto" value="<%=tmto%>"></td>
		</tr>

	</table>
	<br>
	<button type="submit" name="submit" class="form-submit">Update</button>
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


  </div>
</footer>

</body>
</html>