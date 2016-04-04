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
<link href='https://fonts.googleapis.com/css' rel='stylesheet' type='text/css'>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style type="text/css">
.pricing {
    text-align: center;
}
</style>
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
      <li class=""><a href="../viewDepartment.html" style="font-size:140%;"> Home</a></li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" style="font-size:140%;" href="#">Manage Department
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="../addDepartment.html" style="font-size:140%;">Add Department</a></li>
          <li><a href="../editDepartment.html" style="font-size:140%;">Edit Department</a></li>
          <li><a href="../viewDepartment.html" style="font-size:140%;">View Departments</a></li> 
        </ul>
      </li>
      <li><a href="#" style="font-size:140%;">Manage Staff</a></li> 
      <li><a href="#" style="font-size:140%;">Manage Students</a></li> 
    </ul>
    
  
      
              <ul class="nav navbar-nav navbar-right">
              <li ><a href="#" style="font-size:160%;">Welcome ${LoggedInUserInformation.firstName} </a></li> 
      <li class="active"><a href="../../login.html"  style="font-size:160%;"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
    </ul>
    
  </div>
</nav> 
<!-- ---------------- -->
<!-- panel panel-info   panel-heading  panel-body -->
<div class="container ">
<h3>View Department Details</h3>
	<div class="jumbotron">
  	<div   ><!--  -->
  			<p><b>Department :</b></p>
  			<ul><p>${departmentDetails.name}</p></ul>  
  		 </div> 
  		<div>
 			<p><b>Programs Offered :</b></p>
 			<ul>
 				<c:if test="${departmentDetails.programs ne null}">
	 				<c:forEach items="${departmentDetails.programs}" var="prog">
					<li><p>${prog.name}</p></li>
					</c:forEach>
				</c:if>
			</ul> 
			</div>
			<div>
		<p><b>	Additional Requirements :</b></p>
		<ul>
		<c:if test="${departmentDetails.additionalFields ne null}">
			<c:forEach items="${departmentDetails.additionalFields}" var="fields">
				<li>
					<c:choose>
	   					 <c:when test="${fields.optional eq true }">
							<p>${fields.fieldName} (Optional)</p>
						</c:when>
						<c:otherwise>
							<p>${fields.fieldName} </p>
						</c:otherwise>
					</c:choose>
				</li>
			</c:forEach>
			</c:if>
		</ul>
			</div>
      </br>
      
       &nbsp;&nbsp;&nbsp;&nbsp;  <a href="../editDepartment/${departmentDetails.id}.html"><button type="button" class="btn btn-danger">Edit</button></a>&nbsp;&nbsp; 
      	<a href="../viewDepartment.html"><button type="button" class="btn btn-warning">Cancel</button></a>
</div>
</div>
 	

</body>
</html>