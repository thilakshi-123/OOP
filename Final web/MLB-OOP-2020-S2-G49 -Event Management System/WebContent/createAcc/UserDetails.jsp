<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>user details</title>
 <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="./css/HeadFoot.css">
<link rel="stylesheet" type="text/css" href="./css/UserDetails.css">
</head>
<body>
<!--header-->
  <img class="header" src="images/bg51.jpg" id="img">
    

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
    <a href="orderEvent/CreateOrder.jsp" class="userMenu" >Create New Event Order</a><br><br>
    <a href="orderEvent/FindEvent.jsp" class="userMenu" >View My Orders</a><br><br>
</div>
  
  
  
  
  
  
  <div class="main" >
    <h1>My Account</h1>
      <table class="dettable" >
        <c:forEach var="us" items="${userDetails}">
          
          <c:set var="userID" value="${us.userID}"/>
          <c:set var="username" value="${us.username}"/>
          <c:set var="name" value="${us.name}"/>
          <c:set var="unic" value="${us.unic}"/>
          <c:set var="uemail" value="${us.uemail}"/>
          <c:set var="uphone" value="${us.uphone}"/>
          <c:set var="uaddr" value="${us.uaddr}"/>
          <c:set var="uaccType" value="${us.uaccType}"/>
          <c:set var="upass" value="${us.upass}"/>
        
          <tr>
            <td class="detlable">User ID</td>
            <td class="detout">:     ${us.userID}</td>
          </tr>
          <tr>
            <td class="detlable">User Name</td>
            <td class="detout">:     ${us.username}</td>
          </tr>
          <tr>
            <td class="detlable">Name</td>
            <td class="detout">:     ${us.name}</td>
          </tr>
          <tr>
            <td class="detlable">NIC</td>
            <td class="detout">:     ${us.unic}</td>
          </tr>
          <tr>
            <td class="detlable">Email</td>
            <td class="detout">:     ${us.uemail}</td>
          </tr>
          <tr>
            <td class="detlable">Phone</td>
            <td class="detout">:     ${us.uphone}</td>
          </tr>
          <tr>
            <td class="detlable">Address</td>
            <td class="detout">:     ${us.uaddr}</td>
          </tr>
          <tr>
            <td class="detlable">Account Type</td>
            <td class="detout">:     ${us.uaccType}</td>
          </tr>
          <tr>
            <td class="detlable">Password</td>
            <td class="detout" >:     ${us.upass}</td>
          </tr>
          </c:forEach>
      </table>
  
  

<c:url value="createAcc/UpdateUser.jsp" var="userupdate">
  <c:param name="userID" value="${userID}"/>
  <c:param name="username" value="${username}"/>
  <c:param name="name" value="${name}"/>
  <c:param name="unic" value="${unic}"/>
  <c:param name="uemail" value="${uemail}"/>
  <c:param name="uphone" value="${uphone}"/>
  <c:param name="uaddr" value="${uaddr}"/>
  <c:param name="uaccType" value="${uaccType}"/>
  <c:param name="upass" value="${upass}"/>
</c:url>
<a href="${userupdate}">
  <input type="button" name="update" value="Update user" class="updatebtn">
</a>


  <c:url value="createAcc/DeleteUser.jsp" var="userdelete">
    <c:param name="userID" value="${userID}"/>
    <c:param name="username" value="${username}"/>
    <c:param name="name" value="${name}"/>
    <c:param name="unic" value="${unic}"/>
    <c:param name="uemail" value="${uemail}"/>
    <c:param name="uphone" value="${uphone}"/>
    <c:param name="uaddr" value="${uaddr}"/>
    <c:param name="uaccType" value="${uaccType}"/>
    <c:param name="upass" value="${upass}"/>
  </c:url>
  
<a href="${userdelete}">
  <input type="button" name="delete" value="Delete user" class="deletebtn">
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