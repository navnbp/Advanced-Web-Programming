<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<jsp:include page="student_menu.jsp" />


<div class="container">
<form:form  modelAttribute="applications">
<h3>View Applications</h3>
<table class="table table-hover ">
  <thead class="thead-default">
    <tr>
      
      <th><p><b>Department</b></p> </th>
      <th><p><b>Program</b></p></th>
      <th><p><b>Term</b></p></th>
      <th><p><b>Status</b></p></th>
      <th><p><b>Submitted On</b></p></th>
      <th></th>
      
    </tr>
  </thead>
  <tbody>
 
  <c:choose>
   <c:when test="${ applications.size() eq '0' }">
   	<div class="alert alert-danger" role="alert">
 		 <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
  					<span class="sr-only"> </span>
 You have no applications to view..!!
</div>

   </c:when>
  <c:otherwise>
  <c:forEach items="${info}" var="info">
    <tr>
      <td class="col-md-2" scope="row"><p>${info.application.dept.name}</p></td>
      <td class="col-md-2"><p>${info.application.program.name}</p></td>
      <td class="col-md-2"><p>${info.application.term}</p></td>
      <td class="col-md-2"><p>
      <c:choose>
      <%-- <c:when test="${info.application.status.status eq 'Saved' }">
      Not Submitted
      </c:when> --%>
       <c:when test="${info.application.status.status eq 'New' }">
       Submitted
      </c:when>
      <c:otherwise>
        ${info.application.status.status}
      </c:otherwise>
      </c:choose></p>
      </td>
         <td class="col-md-2">
         <p><fmt:formatDate type="date" value="${info.application.submittedOn}" /></p></td>
     
      <td class="col-md-2">
       <a href="viewApplicationDetails/${info.studentId}.html"><button type="button" class="btn btn-warning">Details</button></a>&nbsp;&nbsp;
      <c:if test="${info.application.status.status eq 'Saved' }">
       <a href="editApplication/${info.studentId}.html"><button type="button" class="btn btn-danger">Edit</button></a>&nbsp;&nbsp;
      </c:if>
       </td>
    </tr>
   </c:forEach>
   </c:otherwise>
   </c:choose>
   </tbody>
</table>
</form:form>
</div>



</body>

</html>