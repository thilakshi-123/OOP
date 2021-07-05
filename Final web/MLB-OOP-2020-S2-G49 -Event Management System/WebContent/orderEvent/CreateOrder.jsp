<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>user details</title>
 <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="../css/HeadFoot.css">
<link rel="stylesheet" type="text/css" href="../css/CreateOrder.css">
<body>
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
 
<a href="../Home.jsp" class="rightlg" >Log Out</a>
  </div>

<!--body--> 
<div class="body-block" >
<br> 
<form action="../inserteventservlet" method="post" class="createAccform" onkeyup="validate();">
    <h2 class="u-lg-h">Make Event Order</h2>
    
    <table class="form-table" >
      <tr>
      <tr>
        <td><label class="form-lable">User ID</label></td>
        <td><input type="text" name="userID" class="form-input" id="uid" ><br><small id="uidErr"></small></td>
      </tr>
      <tr>
        <td><label class="form-lable">Event Category</label></td>
        <td><select name="eCat" class="form-input" id="ecat">
            <option selected="selected" >Select Event Category</option>
            <option value="Corporate Events">Corporate Events</option>
            <option value="School Events">School Events</option>
            <option value="Social Events">Social Events</option>
            <option value="Destination Weddings">Destination Weddings</option>
            <option value="Foreign Events">Foreign Events</option>
            <option value="Charity Events">Charity Events</option>
        </select><br><small id="ecatErr"></small></td>
      </tr>
      
      <tr>
        <td><label class="form-lable">Date</label></td>
        <td><input type="date" name="eDate" class="form-input" id="date" ><br><small id="dateErr"></small></td>
      </tr>
      <tr>
        <td><label class="form-lable">Time</label></td>
        <td><input type="time" name="eTime" class="form-input" id="time" ><br><small id="timeErr"></small></td>
      </tr>
      <tr>
        <td><label class="form-lable">Seat Capacity</label></td>
        <td><input type="number" min="1" max="1000" name="eCap" class="form-input" id="ecap" ><br><small id="ecapErr"></small></td>
      </tr>
      <tr>
        <td><label class="form-lable">District</label></td>
        <td><select name="eCity" class="form-input" id="city">
            <option selected="selected" >Choose District</option>
                  <option>Ampara</option>
                  <option>Anuradhapura</option>
                  <option>Badulla</option>
                  <option>Batticaloa</option>
                  <option>Colombo</option>
                  <option>Galle</option>
                  <option>Gampaha</option>
                  <option>Hambantota</option>
                  <option>Jaffna</option>
                  <option>Kalutara</option>
                  <option>Kandy</option>
                  <option>Kegalle</option>
                  <option>Kurunegala</option>
                  <option>Mannar</option>
                  <option>Matale</option>
                  <option>Matara</option>
                  <option>Monaragala</option>
                  <option>Mulativu</option>
                  <option>Nuwara Eliya</option>
                  <option>Polonnaruwa</option>
                  <option>Puttalam</option>
                  <option>Ratnapura</option>
                  <option>Trincomalee</option>
                  <option>Vavuniya</option>
                  <option>Kilinochchi</option>
        </select><br><small id="cityErr"></small></td></td>
      </tr>
      <tr>
        <td><label class="form-lable">Special Messages</label></td>
        <td><textarea name="spMsg" class="form-input-msg" placeholder="Text here..." ></textarea></td>
      </tr>
    </table>
  <button type="submit" class="form-submit">View Estimated Budget</button>
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

<script type="text/javascript">
 
 //validation
function validate(){
 
var uid = document.getElementById('uid').value;
var ecat = document.getElementById('ecat').value;
var ecap = document.getElementById('ecap').value;
var date = document.getElementById('date').value;
var time = document.getElementById('time').value;
var city = document.getElementById('city').value;

 
  if(uid == '') {
      document.getElementById('uidErr').innerHTML = "* Please enter user id";
      document.getElementById('uid').style.border = '1.5px solid red';
  } else {
         document.getElementById('uidErr').innerHTML = "";
         document.getElementById('uid').style.border = '1.5px solid green';
      }


if(ecat == 'Select Event Category') {
      document.getElementById('ecatErr').innerHTML = "* Please select event category";
      document.getElementById('ecat').style.border = '1.5px solid red';
  } else {
         document.getElementById('ecatErr').innerHTML = "";
         document.getElementById('ecat').style.border = '1.5px solid green';
      }


      if(ecap == '') {
      document.getElementById('ecapErr').innerHTML = "* Please enter seat capacity";
      document.getElementById('ecap').style.border = '1.5px solid red';
  } else {
         document.getElementById('ecapErr').innerHTML = "";
         document.getElementById('ecap').style.border = '1.5px solid green';
      }


      if(date == '') {
      document.getElementById('dateErr').innerHTML = "* Please enter event date";
      document.getElementById('date').style.border = '1.5px solid red';
  } else {
         document.getElementById('dateErr').innerHTML = "";
         document.getElementById('date').style.border = '1.5px solid green';
      }


      if(time == '') {
      document.getElementById('timeErr').innerHTML = "* Please enter event starting time";
      document.getElementById('time').style.border = '1.5px solid red';
  } else {
         document.getElementById('timeErr').innerHTML = "";
         document.getElementById('time').style.border = '1.5px solid green';
      }


      if(city == 'Choose District') {
      document.getElementById('cityErr').innerHTML = "* Please select the district";
      document.getElementById('city').style.border = '1.5px solid red';
  } else {
         document.getElementById('cityErr').innerHTML = "";
         document.getElementById('city').style.border = '1.5px solid green';
      }









}


</script>

</html>