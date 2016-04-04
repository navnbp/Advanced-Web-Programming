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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
<h2>Graduate Program Applications</h2>
<jsp:include page="admin_menu.jsp" />



<div class="container">
<form:form  modelAttribute="department">
<h3>View Departments</h3>
<table class="table table-hover ">
  <thead class="thead-default">
    <tr>
      
      <th>Department Name</th>
      <th>No of Programs Offered</th>
      <th></th>
      
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${ deptartment}" var="dept">
    <tr>
      <td class="col-md-4" scope="row">${dept.name}</td>
      <td class="col-md-3">${dept.programs.size()}</td>
      <td class="col-md-2"><a href="viewDeptDetails/${dept.id}.html"><button type="button" class="btn btn-primary">Details</button></a>&nbsp;&nbsp;
       <a href="editDepartment/${dept.id}.html"><button type="button" class="btn btn-warning">Edit</button></a>&nbsp;&nbsp;
       <a href="deleteDepartment/${dept.id}.html"><button type="button" class="btn btn-danger remove">Delete</button></a>&nbsp;&nbsp;
       </td>
    </tr>
   </c:forEach>
   </tbody>
</table>
</form:form>
</div>
</body>
</html>