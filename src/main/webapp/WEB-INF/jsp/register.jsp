<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="css/normalize.css">
<link rel="stylesheet" href="css/style.css">

<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
        <script src="js/index.js"></script>
</head>

<body>
 <form:form modelAttribute="user" method="post">
    <div class="form" style="text-align:center">
      
       <h1>CSULA Graduate Program Application Register</h1>
    
     <dir style="text-align:center">
    	  <font color='red'>
   			<c:if test="${not empty error}">
  				<h3> ${error}</h3>
   			</c:if>
  		  </font>
  	</dir>
      <ul class="tab-group">
      </ul>
      <div class="tab-content">
 		<div id="signup">   
        
            <div class="field-wrap">
              <label>
                First Name<span class="req">*</span>
              </label>
              <form:input  path="firstName" required="required"  />
            </div>
        
            <div class="field-wrap">
              <label>
                Last Name<span class="req">*</span>
              </label>
              <form:input path="lastName" required="required"/>
            </div>

          <div class="field-wrap">
            <label>
              Email Address<span class="req">*</span>
            </label>
            <form:input  path="emailId" required="required"/>
            <%--   <form:errors  path="emailId" />  --%> 
          </div>
          
          <div class="field-wrap">
            <label>
              Set A Password<span class="req">*</span>
            </label>
            <form:password  path="pwd" required="required"/>
          </div>
          
          <button type="submit" class="button "/>Get Started</button>
           <button type="reset" class="button "/>Clear</button>
          
			  <p class="forgot"><a href="login.html">Login</a></p>
        </div>
             <div id="login">   
        </div>
      </div><!-- tab-content -->
      
</div> <!-- /form -->
</form:form>
       <script src="//code.jquery.com/jquery-1.10.2.js"></script>
        <script src="js/index.js"></script>
  </body>
<<%-- body>

<form:form modelAttribute="user" method="post">

First Name : <form:input path="firstName" required="required"/><br/>
Last Name : <form:input path="lastName" required="required"/><br/>
Email ID : <form:input path="emailId" required="required"/><br/>
Password : <form:input path="pwd" required="required"/><br/>
<input type="submit" value="register" name="register">
</form:form>
</body> --%>
</html>