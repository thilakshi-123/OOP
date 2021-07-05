<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>delete user account</title>
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="../css/HeadFoot.css">
<link rel="stylesheet" type="text/css" href="../css/DeleteUser.css">
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
		String userID = request.getParameter("userID");
		String username = request.getParameter("username");
		String name = request.getParameter("name");
		String unic = request.getParameter("unic");
		String uemail = request.getParameter("uemail");
		String uphone = request.getParameter("uphone");
		String uaddr = request.getParameter("uaddr");
		String uaccType = request.getParameter("uaccType");
		String upass = request.getParameter("upass");
	%>
	


<form action="../deleteuser" method="post" class="createAccform" >
<h4>Are you sure you want to delete this account ?</h4>
	<table class="form-table">
		<tr>
			<td class="form-lable" >User ID</td>
			<td><input class="form-input" type="text" name="userID" value="<%=userID %>" readonly></td>
		</tr>
		<tr>
			<td class="form-lable" >User Name</td>
			<td><input class="form-input" type="text" name="uname" value="<%=username %>" readonly></td>
		</tr>
		<tr>
			<td class="form-lable" >Name</td>
			<td><input class="form-input" type="text" name="uname" value="<%=name %>" readonly></td>
		</tr>
		<tr>
		<td class="form-lable" >NIC </td>
		<td><input class="form-input" type="text" name="unic" value="<%=unic %>" readonly></td>
	</tr>
	<tr>
		<td class="form-lable" >Email</td>
		<td><input class="form-input" type="text" name="uemail" value="<%=uemail %>"  readonly></td>
	</tr>
	<tr>
		<td class="form-lable" >Phone</td>
		<td><input class="form-input" type="text" name="uphone" value="<%=uphone %>" readonly></td>
	</tr>
	<tr>
		<td class="form-lable">Address</td>
		<td><input class="form-input" type="text" name="uaddr" value="<%=uaddr %>" readonly></td>
	</tr>
	<tr>
		<td class="form-lable" >Account type</td>
		<td><input class="form-input" type="text" name="uaccType" value="<%=uaccType %>" readonly></td>
	</tr>
		
	</table>
	<br>
	<button type="submit" name="submit" class="form-submit">Delete</button>
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