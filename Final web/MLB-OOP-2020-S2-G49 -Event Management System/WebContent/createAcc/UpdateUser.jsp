<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update user</title>
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
	
<form action="../updateuser" method="post" class="createAccform" >
<h2 class="u-lg-h">Update Your details</h2>
	<table class="form-table" >
		<tr>
			<td class="form-lable">User ID</td>
			<td><input class="form-input"class="form-input" type="text" name="userID" value="<%=userID %>" readonly></td>
		</tr>
		<tr>
			<td class="form-lable">User Name</td>
			<td><input class="form-input" type="text" name="username" id="uname" value="<%=username %>"><br><small id="unameErr"></small></td>
		</tr>
		<tr>
			<td class="form-lable">Name</td>
			<td><input class="form-input" type="text" name="name" id="name" value="<%=name %>"><br><small id="nameErr"></small></td>
		</tr>
		<tr>
		<td class="form-lable">NIC </td>
		<td><input class="form-input" type="text" name="unic" value="<%=unic %>" readonly></td>
	</tr>
	<tr>
		<td class="form-lable">Email</td>
		<td><input class="form-input" type="text" id="email" name="uemail" value="<%=uemail %>" ><br><small id="emailErr"></small></td>
	</tr>
	<tr>
		<td class="form-lable">Phone</td>
		<td><input class="form-input" type="text" name="uphone" id="phone" value="<%=uphone %>" ><br><small id="phoneErr"></small></td>
	</tr>
	<tr>
		<td class="form-lable">Address</td>
		<td><input class="form-input" type="text" name="uaddr" id="addr" value="<%=uaddr %>" ></td>
	</tr>
	<tr>
		<td class="form-lable">Account type</td>
		<td><input class="form-input" type="text" name="uaccType" value="<%=uaccType %>" readonly></td>
	</tr>
	<tr>
		<td class="form-lable">Password</td>
		<td><input class="form-input" type="password" name="upass" id="pswd1" value="<%=upass %>" ><a  class="psBtn"><i class="fa fa-eye-slash" id="faEye1" onclick="showpw1()"></i></a>
          <br><small id="pswd1Err"></small>
       </td>  
	</tr>
	<tr>
        <td><label class="form-lable">Re-typePassword</label></td>
        <td><input type="password" class="form-input" id="pswd2" value="<%=upass %>" > <a  class="psBtn"><i class="fa fa-eye-slash" id="faEye2" onclick="showpw2()"></i></a><br><small id="pswd2Err"></small>
        </td>
      </tr>
		
	</table>
	<br>
	<button type="submit" name="submit" class="form-submit">Submit</button>
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
<script type="text/javascript">

//validation
function validate(){

  var email = document.getElementById('email').value;
  var name = document.getElementById('name').value;
  var uname = document.getElementById('uname').value;
  var phone = document.getElementById('phone').value;
  
  var addr = document.getElementById('addr').value;
  
  var pswd1 = document.getElementById('pswd1').value;
  var pswd2 = document.getElementById('pswd2').value;

  
  //validate password
  if(pswd1 == '') {
      document.getElementById('pswd1Err').innerHTML = "* Please enter a password";
      document.getElementById('pswd1').style.border = '1.5px solid red';
  } else {
      var check = /(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}/;                
      if(check.test(pswd1) === false) {
          document.getElementById('pswd1Err').innerHTML = "* Must contain at least one number and one" + "<br>" + " uppercase and lowercase letter, and " + "<br>" + " at least 8 or more characters";
          document.getElementById('pswd1').style.border = '1.5px solid red';
      } else {
         document.getElementById('pswd1Err').innerHTML = "";
         document.getElementById('pswd1').style.border = '1.5px solid green';
      }
  }

   //validate retyped password
  if(pswd2 == '') {
      document.getElementById('pswd2Err').innerHTML = "* Please retype entered password";
      document.getElementById('pswd2').style.border = '1.5px solid red';
  }          
   else {
    if( pswd1 !== pswd2) {
          document.getElementById('pswd2Err').innerHTML = "* passwords does not match";
          document.getElementById('pswd2').style.border = '1.5px solid red';
      } else {
         document.getElementById('pswd2Err').innerHTML = "";
         document.getElementById('pswd2').style.border = '1.5px solid green';
      }
  }
  
  
  //validate address
  if(addr == '') {
      document.getElementById('addrErr').innerHTML = "* Please enter your address";
      document.getElementById('addr').style.border = '1.5px solid red';
  } else {
         document.getElementById('addrErr').innerHTML = "";
         document.getElementById('addr').style.border = '1.5px solid green';
      }
  
  //validate contact num
  if(phone == '') {
      document.getElementById('phoneErr').innerHTML = "* Please enter a contact number";
      document.getElementById('phone').style.border = '1.5px solid red';
  } else {
      var check = /[0-9]{10}/;                
      if(check.test(phone) == false) {
          document.getElementById('phoneErr').innerHTML = "* please enter a valid contact number";
          document.getElementById('phone').style.border = '1.5px solid red';
      } else {
        document.getElementById('phoneErr').innerHTML = "";
         document.getElementById('phone').style.border = '1.5px solid green';
      }
  } 


  
  //validate name
    if(name == '') {
        document.getElementById('nameErr').innerHTML = "* Please enter your name";
        document.getElementById('name').style.border = '1.5px solid red';
    } else {
           document.getElementById('nameErr').innerHTML = "";
           document.getElementById('name').style.border = '1.5px solid green';
        }

  //validate uname
    if(uname == '') {
        document.getElementById('unameErr').innerHTML = "* Please enter your name";
        document.getElementById('uname').style.border = '1.5px solid red';
    } else {
           document.getElementById('unameErr').innerHTML = "";
           document.getElementById('uname').style.border = '1.5px solid green';
        }

//Validate email address
if(email == '') {
     document.getElementById('emailErr').innerHTML = "* Please enter your email address";
     document.getElementById('mail').style.border = '1.5px solid red';
} else {
    // Regular expression for basic email validation
    var check = /^\S+@\S+\.\S+$/;
    if(check.test(email) === false) {
        document.getElementById('emailErr').innerHTML = "* Please enter a valid email address";
        document.getElementById('email').style.border = '1.5px solid red';
    } else{
        document.getElementById('emailErr').innerHTML = "";
        document.getElementById('email').style.border = '1.5px solid green';
    }
}
 
}

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

  //show password2

   function showpw2()
     {
        var pw2 = document.getElementById("pswd2"), ey2 =document.getElementById('faEye2')

        if (pw2.type === "password") 
        { 
          pw2.type = "text";
          ey2.className = 'fa fa-eye'

        } else
         {
           pw2.type = "password";
           ey2.className = 'fa fa-eye-slash'
        }
    }



</script>
</html>