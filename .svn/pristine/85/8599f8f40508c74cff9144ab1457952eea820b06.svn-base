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
</head>
<body>
<h2>Graduate Program Applications</h2>
<!-- ------------------------------------------ -->

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

<!------------------------------------------- -->

<div class="container">
</br>
<div class="row"><h2>Edit Department </h2></div>
</br><div class="row">
<form:form modelAttribute="dept" method="post">
	<b>Department Name : </b>&nbsp;&nbsp;&nbsp; <input  class="textbox"  type="text" name="name" value="${dept.name }" placeholder="Department Name" style="width: 250px;" required />
</div><br/><div class="row">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="submit" value="Save" class="btn btn-success" name="save">  &nbsp;&nbsp;&nbsp;
<input type="reset" value="clear"  class="btn btn-warning" name="clear">&nbsp;&nbsp;&nbsp;

<a href="../editDepartment/${deptId}.html"><button type="button" name="${deptId}" value="Edit" class="btn btn-primary">Cancel</button></a>

</form:form>
</div>
</div>


</body>
</html>