<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Graduate Program Applications</title>

<link href='http://fonts.googleapis.com/css?family=Cookie' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" href="../../css/common.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-2.2.1.min.js"></script>

<!-- 	<script type="text/javascript">
	$(function(){

		 $("#btnGet").click( function () {
		     var value=$('#program').val();
		     $("#hdnProg").val(value);
		        });
		
	});
	
	
	</script> -->
</head>
<body>
<h2>Graduate Program Applications</h2>
<!-- ---------------------------- -->
 <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" style="font-size:170%;" href="#">   </a>
    </div>
    <ul class="nav navbar-nav">
      <li class=""><a href="../home.html" style="font-size:140%;"> Home</a></li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" style="font-size:140%;" href="#"> Application
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="../addNewApplication.html" style="font-size:140%;">New Application</a></li>
          <li><a href="../viewApplications.html" style="font-size:140%;">View Application</a></li> 
        </ul>
      </li>
    <!--   <li><a href="#" style="font-size:140%;">Manage Students</a></li> --> 
    </ul>
    
  
      
              <ul class="nav navbar-nav navbar-right">
              <li ><a href="#" style="font-size:160%;">Welcome ${LoggedInUserInformation.firstName} </a></li> 
      <li class="active"><a href="../../logout.html"  style="font-size:160%;"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
    </ul>
    
  </div>
</nav> 


<!-- ------------------------------- -->

<div class="container">
 <h3>Edit Application</h3></br>
 <div class="jumbotron">
<%-- :form modelAttribute="application"  --%> 
<form action="../editApplication.html" method="post">
<div class="row ">

 &nbsp;&nbsp;&nbsp;&nbsp;<b>Department </b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="hidden" name="hdnApplicationId" value="${application.id }" />
<input type="text" class="textbox"  value="${application.dept.name }" readonly="readonly"/> 
<input type="hidden"  name="hdnDeptId" value="${application.dept.id }"/> 
</div>
<div id="div" >
<div class="row"  id="divProg"> 
<hr/>&nbsp;&nbsp;&nbsp;&nbsp;<b>Program</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<select name="program" class="textbox">

<c:forEach items="${program}" var="prog">
<c:choose>
<c:when test="${application.program.id eq prog.id }">
    <option value="${prog.id }" selected="selected">${prog.name }</option>
    </c:when>
    <c:otherwise>
     <option value="${prog.id }">${prog.name }</option>
    </c:otherwise>
    </c:choose>
</c:forEach>
</select>



</div>
<hr/>

&nbsp;<b>Term</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<!-- <input type="text" name="term"  maxlenth=15 required/> -->
<input type="text" id="term" class="textbox" name="term" value="${application.term }" />
</br/></br/></br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" id="btnGet" class="btn btn-success" value="Save & Continue" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      	<a href="../viewApplications.html"><button type="button" class="btn btn-danger">Cancel</button></a>
</div>
</form>
</div>
</div>


</body>

</html>