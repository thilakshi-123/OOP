<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>sponser details</title>
 <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="./css/HeadFoot.css">
<link rel="stylesheet" type="text/css" href="./css/UserDetails.css">
</head>
<body>
<!--header-->
  <img class="header" src="images/bg51.jpg" id="img">
    

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
      <img src="images/Upropic.png"  class="proimg">
      </div>
            <br><br>
    <a href="sponserAcc/AddSpo.jsp" class="userMenu" >Create New sponsorship</a><br><br>
    <a href="sponserAcc/validateSpo.jsp" class="userMenu" >View sponsor details</a><br><br>
</div>
  
  
  
  
  
  
  <div class="main" >
    <h1>Sponsorship Details</h1>
      <table class="dettable" >
        <c:forEach var="spo" items="${spoDetails}">

		<c:set var="sid" value="${spo.sid}"/>
		<c:set var="cname" value="${spo.cname}"/>
		<c:set var="caddress" value="${spo.caddress}"/>
		<c:set var="cemail" value="${spo.cemail}"/>
		<c:set var="camount" value="${spo.camount}"/>
		<c:set var="tmfrom" value="${spo.tmfrom}"/>
		<c:set var="tmto" value="${spo.tmto}"/>
		
		<tr>
	<td class="detlable" > sponsor id</td>
	<td class="detout"> ${spo.sid}</td>
</tr>

<tr>
	<td class="detlable" > Company name</td>
	<td class="detout">${spo.cname}</td>
</tr>

<tr>
	<td class="detlable" > Company address</td>
	<td class="detout"> ${spo.caddress}</td>
</tr>

<tr>
	<td class="detlable" >email address</td>
	<td class="detout"> ${spo.cemail}</td>
</tr>

<tr>
	<td class="detlable" > sponsor amount</td>
	<td class="detout"> ${spo.camount}</td>
</tr>

<tr>
	<td class="detlable" > Time from</td>
	<td class="detout"> ${spo.tmfrom }</td>
</tr>

<tr>
	<td class="detlable" > Time to</td>
	<td class="detout"> ${spo.tmto }</td>
</tr>

</c:forEach>

</table>
  
  
  
 <c:url value="sponserAcc/updatespo.jsp" var="spoupdate">
	
	<c:param name="sid" value="${sid}"/>
	<c:param name="cname" value="${cname}"/>
	<c:param name="caddress" value="${caddress}"/>
	<c:param name="cemail" value="${cemail}"/>
	<c:param name="camount" value="${camount}"/>
	<c:param name="tmfrom" value="${tmfrom}"/>
	<c:param name="tmto" value="${tmto}"/>
	</c:url>
	
	
	<a href="${spoupdate}">
	<input type="button" name="update" value="update data" class="updatebtn">
	</a>
	
	
	
	<c:url value="sponserAcc/Deletespo.jsp" var="spodelete">
	<c:param name="sid" value="${sid}"/>
	<c:param name="cname" value="${cname}"/>
	<c:param name="caddress" value="${caddress}"/>
	<c:param name="cemail" value="${cemail}"/>
	<c:param name="camount" value="${camount}"/>
	<c:param name="tmfrom" value="${tmfrom}"/>
	<c:param name="tmto" value="${tmto}"/>
 </c:url>
 
 
 <a href="${spodelete}">
	<input type="button" name="delete" value="Delete " class="deletebtn">
</a>
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
        <a href="https://www.apple.com/ios/app-store/" target="_blank"><img src="images/appstore.png" class="app-link"></a>
        <a href="https://play.google.com/store?hl=en" target="_blank"><img src="images/playstore.png" class="app-link"></a>
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