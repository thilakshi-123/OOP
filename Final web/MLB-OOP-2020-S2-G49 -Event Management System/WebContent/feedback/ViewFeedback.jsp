<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Feedback</title>
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
    <br><br>
    <a href="feedback/AddFeedback.jsp" class="userMenu" >Add feedback</a><br><br>
   
</div>
  
  
  
  
  
  
  <div class="main" >
    <h1>Your feedbacks..</h1>
      <table class="dettable" >
        <c:forEach var="fd" items="${feedbackDetails}">
           <c:set var="fdID" value="${fd.fdID}"/>
          <c:set var="name" value="${fd.name}"/>
          <c:set var="fdbk" value="${fd.fdbk}"/>
       
        <tr>
            <td class="detlable">Feedback ID</td>
            <td class="detout">:     ${fd.fdID}</td>
          </tr>
          <tr>
            <td class="detlable">Name</td>
            <td class="detout">:     ${fd.name}</td>
          </tr>
          <tr>
            <td class="detlable">Feedback</td>
            <td class="detout">:     ${fd.fdbk}</td>
          </tr>
     </c:forEach>
      </table>
  
  

<c:url value="feedback/UpdateFeedback.jsp" var="feedbackupdate">
  <c:param name="fdID" value="${fdID}"/>
  <c:param name="name" value="${name}"/>
  <c:param name="fdbk" value="${fdbk}"/>
  
</c:url>
<a href="${feedbackupdate}">
  <input type="button" name="update" value="Update Feedback" class="updatebtn">
</a>


  <c:url value="feedback/DeleteFeedback.jsp" var="feedbackdelete">
    <c:param name="fdID" value="${fdID}"/>
    <c:param name="name" value="${name}"/>
  	<c:param name="fdbk" value="${fdbk}"/>
  </c:url>
  
<a href="${feedbackdelete}">
  <input type="button" name="delete" value="Delete feedback" class="deletebtn">
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