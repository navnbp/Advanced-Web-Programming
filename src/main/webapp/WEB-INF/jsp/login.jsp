<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Graduate Program Applications</title>
<link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="css/normalize.css">
<link rel="stylesheet" href="css/style.css">

<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

<!--         
<script>
$(function(){
	  $("#header").load("header.html"); 
	  $("#footer").load("footer.html"); 
	});
</script> -->

</head>
<body>
<form:form modelAttribute="user" method="post">
    <div class="form">
      
       <h1>CSULA Graduate Program Application Login</h1>
     
     <dir style="text-align:center">
    	  <font color='red'>
   			<c:if test="${not empty error}">
  				<h3> ${error}</h3>
   			</c:if>
  		  </font>
  	</dir>
      <ul class="tab-group">
      <!--   <li class="tab active"><a href="#login">Log In</a></li>
        <li class="tab "><a href="/register.html">Register</a></li>
        -->
      </ul>
      
      <div class="tab-content">
     
             <div id="login">   
         <%--  <form action="/login.html" method="post"> --%>
            <div class="field-wrap">
            <label>
              Email Address<span class="req">*</span>
            </label>
            <form:input path="emailId" required="required" autocomplete="off"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Password<span class="req">*</span>
            </label>
            <form:password path="pwd" required="required" />
          </div>
          
       <!--    <p class="forgot"><a href="#">Forgot Password?</a></p> -->
          
          <button class="button"/>Log In</button>
          <button type="reset" class="button "/>Clear</button>
          
       
 			 <p class="forgot"><a href="register.html">Register</a></p> 
        </div>
     
     
        <div id="signup">   
       <!--    <h1>Register</h1>
          
          <form action="/" method="post">
          
          <div class="top-row">
            <div class="field-wrap">
              <label>
                First Name<span class="req">*</span>
              </label>
              <input type="text" required autocomplete="off" />
            </div>
        
            <div class="field-wrap">
              <label>
                Last Name<span class="req">*</span>
              </label>
              <input type="text"required autocomplete="off"/>
            </div>
          </div>

          <div class="field-wrap">
            <label>
              Email Address<span class="req">*</span>
            </label>
            <input type="email"required autocomplete="off"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Set A Password<span class="req">*</span>
            </label>
            <input type="password"required autocomplete="off"/>
          </div>
          
          <button type="submit" class="button button-block"/>Get Started</button>
          
          </form>
 -->
        </div>
        

        
      </div><!-- tab-content -->
      
</div> <!-- /form -->
</form:form>
       <script src="//code.jquery.com/jquery-1.10.2.js"></script>
        <script src="js/index.js"></script>
  </body>
</html>