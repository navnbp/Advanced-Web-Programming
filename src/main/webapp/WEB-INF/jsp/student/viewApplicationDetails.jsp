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
<link rel="stylesheet" href="../../css/common.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>


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


<div class="container ">

<h2>Application Details</h2>
	<div class="jumbotron">
	
	 
	   <div class="row">
	  <div>
	 
	  <table class="table">
  <thead class="thead">
    <tr>
      
      <th><p><b>Department</b></p> </th>
      <th><p><b>Program</b></p></th>
      <th><p><b>Term</b></p></th>
      <th><p><b>Status</b></p></th>
          <th><p><b>Submitted On</b></p></th>
     
    </tr>
  </thead>
  <tbody>
<%--  <c:forEach items="${ stuInfo.applications}" var="stu"> --%>
  

  <tr><p>
  <td class="col-md-2" scope="row"><p>${stuInfo.application.dept.name }</p> </td>
      <td class="col-md-2"><p> ${stuInfo.application.program.name }</p></td>
      <td class="col-md-2"> <p>${stuInfo.application.term }</p></td>
      <td class="col-md-2">
      <c:choose>
      <%-- <c:when test="${stuInfo.application.status.status eq 'Saved' }">
    <p> Not Submitted</p>
      </c:when> --%>
       <c:when test="${stuInfo.application.status.status eq 'New' }">
     <p> Submitted</p>
      </c:when>
      <c:otherwise>
      <p>  ${stuInfo.application.status.status}</p>
      </c:otherwise>
      </c:choose>
     </td>
         <td class="col-md-2">
       <p>  <fmt:formatDate type="date" value="${info.application.submittedOn}" /> </p></td>
 
  
  </tr></p>
<%--   </c:forEach> --%>
  
  </tbody>
  </table>
	  </div>
	  </div>
	
	
	 <div class="row">
	  <div class="col-md-8">
	  <h3><b><u>Student Details</u></b></h3></br>
	
	  <p><b>First Name :</b>	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
	  ${stuInfo.firstName}  </p>
	  <p><b>Last Name :</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	   ${stuInfo.lastName}</p>
	  <p><b>Email :</b>	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
	  ${stuInfo.email}  </p>
	   <c:if test=" ${stuInfo.cin ne null}">
	  <p><b>CIN  :</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
	  ${stuInfo.cin}</p>
	   </c:if> 
	  	<p><b>Gender :</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	  	 ${stuInfo.gender}  </p>
	  	<p><b>Date Of Birth :</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	  	   <fmt:formatDate type="date" value="${stuInfo.dob}" /></p>
	  	<p><b>Nationality :</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	  	   ${stuInfo.citizenship} </p>
	  	<p><b>International Student :</b>&nbsp;&nbsp;&nbsp;   
	  	${stuInfo.isInternationalStudent} </p>
	  </div>
	  </div>
	  <div class="row">
	    <div class="col-md-8">
	    <h3><b><u>Academic Details</u></b></h3></br>
	  <p><b>GPA :</b>	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${stuInfo.academicRecords.gpa } </p>
	    <p><b>GRE :</b>	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${stuInfo.academicRecords.gre } </p>
	  <c:if test="${stuInfo.isInternationalStudent eq true}">
	  <p><b>TOFEL :</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${stuInfo.academicRecords.tofel }</p>
	  </c:if>
	  <p><b>Transcript :</b>	&nbsp;&nbsp; <a href="../viewFile.html?id=${stuInfo.application.id}&file=${stuInfo.academicRecords.transcript}" target="_blank"> ${stuInfo.academicRecords.transcript } </a> </p>
	    </div>
	    </div>
	    
	    
	   
	     <div class="row">
	  <div>
	  <h3><b><u>Educational Background</u></b></h3></br>
	  <table class="table">
  <thead class="thead">
    <tr>
      
      <th><p><b>University</b></p> </th>
      <th><p><b>Degree</b></p></th>
      <th><p><b>Major</b></p></th>
      <th><p><b>Start Date</b></p></th>
      <th><p><b>End Date</b></p></th>
     
    </tr>
  </thead>
  <tbody>
  <c:forEach  items="${stuInfo.educationalBackground }" var="edu">
  <%-- ---> ---> ${edu.major } ---> ${edu.startDate } ---> ${edu.endDate} </br> --%>
  <tr><p>
  <td class="col-md-2" scope="row"><p>${edu.university }</p> </td>
      <td class="col-md-2"><p> ${edu.degree }</p></td>
      <td class="col-md-2"><p>${edu.major }</p></td>
      <td class="col-md-2"><p><fmt:formatDate type="date" value="${edu.startDate}" /></p></td>
      <td class="col-md-2"><p><fmt:formatDate type="date" value="${edu.endDate}" /></p></td>
  
  </tr></p>
  </c:forEach>
  
  </tbody>
  </table>
	  </div>
	  </div>
	
	  
	 
	   <!--  <div class="row">
	    <div class="col-md-8"> -->
	   <h3><b><u> Department Additional Requirements</u></b></h3></br>
	    <div class="panel-body" >
	    <div class=" form-horizontal ">
	   <c:forEach items="${stuInfo.application.additionalRecords }" var="record">
	 <c:choose>
	 	
	  <c:when test="${record.additionalField.fieldValueType eq 'File' }">
		<c:if test="${record.fieldValue.trim().length() != '0' }">
		<div class="form-group">
		<label for="" style=" text-align: left;" class="control-label col-sm-3"><p><b>${record.additionalField.fieldName }</b></p> </label>
		 	<div class="col-sm-3">
		 	<p>	 <a href="../viewFile.html?id=${stuInfo.application.id}&file=${record.fieldValue}" target="_blank"> ${record.fieldValue } </a></p>
	</div></div>
	</c:if>
	  </c:when>
	  
	  <c:otherwise>
	  <c:if test="${record.fieldValue.trim().length() != '0' }">
	<div class="form-group">
		<label for="" style=" text-align: left;"  class="control-label col-sm-3"><p><b>
		 ${record.additionalField.fieldName }</b></p> </label>
		 <div class="col-sm-3">
		  <p>${record.fieldValue}</p>
</div></div>
</c:if>
	  </c:otherwise>
	  </c:choose>
	  
	   
	   </c:forEach>
	    </div>
	    </div>


	  
	 
	</br>
	
&nbsp;&nbsp;&nbsp;&nbsp;      	<a href="../viewApplications.html"><button type="button" class="btn btn-warning">Cancel</button></a>

      
      
      </div>

</div>
 

</body>

</html>