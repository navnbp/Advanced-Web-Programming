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
 <!-- 
 <link rel="stylesheet" href="../../css/admin/dialog.css"/>
	
	 including css & jQuery Dialog UI here
	<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/themes/ui-darkness/jquery-ui.css" rel="stylesheet">
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js"></script>
	<script type="text/javascript" src="../../js/dialog.js"></script>
 -->


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
<!-- ------------------>




<div class="container">

<form:form  modelAttribute="editDepartment">

<h3>Edit Department</h3><br/>
<div class="row">
<h5>
<b>Department Name :</b>  &nbsp;&nbsp;&nbsp;  <input  class="textbox"  path="name" style="width: 250px;" value="${editDepartment.name }" required="required"  readonly />
<input type="hidden" name="deptId" value="${editDepartment.id }"> &nbsp;&nbsp;&nbsp;  

    <a href="../editDeptName/${editDepartment.id}.html"><button type="button" value="Edit"  class="btn btn-warning">Edit</button></a>
</div>
<hr>
 <div >
<h3>Programs Offered </h3><br/>
  		 <div id="TextBoxContainer">
  		 <c:forEach items="${editDepartment.programs }" var="prog">
  		 <div class="row"><p>
  	
  	<b>Program Name :</b> 	&nbsp;&nbsp;&nbsp;  <input  class="textbox" name = "DynamicTextBox" type="text"  style="width: 250px;" required="required" readonly value = "${prog.name }" />&nbsp;&nbsp;&nbsp;
        <input type="hidden" name="hdnProg${prog.id }" value="${prog.id }">
         <a href="../editProgram/${prog.id}.html"><button type="button" name="${prog.id}" value="Edit" class="btn btn-warning">Edit</button></a>&nbsp;&nbsp;&nbsp; 
        <a href="../deleteProgram/${prog.id}.html"><button type="button" name="${prog.id}" value="Edit" class="btn btn-danger remove">Delete</button></a> 
         </p></div>
         </c:forEach>
    				<!--Textboxes will be added here -->
			</div>
	<!-- /admin/AddProgram.html -->		
	   <a href="../AddProgram.html"><button type="button"  value="Add Program" class="btn btn-primary ">Add Program</button></a>
		<!-- <input id="btnAdd" type="button" class="btn btn-primary"  value="Add Program" /> -->
		<input type="hidden" name="progvalues" id="progvalues">
  		 </div>
<hr>
<!-- fieldName fieldValueType isRequired -->
<h3>Additional Requirements </h3><br/>
  		 <div id="TextBoxContainer2">
  		 <c:forEach items="${editDepartment.additionalFields }" var="fields">
  		 <div class="row"><p>
	  		
	  		<b>Requirement Name : </b>&nbsp;&nbsp;&nbsp; <input  class="textbox"  name = "DynamicTextBox2"  type="text" style="width: 250px;" required="required" readonly value = "${fields.fieldName }" />&nbsp;&nbsp;&nbsp;
	        
	        <b>  Value Type :  </b> &nbsp;&nbsp;&nbsp; <select  class="textbox"  name="DynamicDropDown" disabled="disabled" style="width: 100px;" >
	         <c:choose>
	         <c:when test="${fields.fieldValueType eq 'Number' }">
	         <option value="Number" selected="selected">Number</option>
	        <option value="Text">Text</option>
	        <option value="File">File</option>
	         </c:when>
	            <c:when test="${fields.fieldValueType eq 'Text' }">
	         <option value="Number">Number</option>
	        <option value="Text" selected="selected" >Text</option>
	        <option value="File">File</option>
	         </c:when>
	            <c:when test="${fields.fieldValueType eq 'File' }">
	         <option value="Number">Number</option>
	        <option value="Text">Text</option>
	        <option value="File" selected="selected">File</option>
	         </c:when>
	         <c:otherwise>
	          <option value="Number">Number</option>
	        <option value="Text">Text</option>
	        <option value="File" >File</option>
	         </c:otherwise>
	        </c:choose>
	        </select>&nbsp;&nbsp;&nbsp;
	        <c:choose>
	       
	        <c:when test="${fields.optional eq true}">
	        <input type="checkbox" name="optional" value="optional" disabled="disabled" checked="checked">&nbsp;Optional &nbsp;&nbsp;&nbsp;
	        </c:when>
	        <c:otherwise>
	        <input type="checkbox" name="optional" disabled="disabled" value="optional">&nbsp;Optional &nbsp;&nbsp;&nbsp;
	        </c:otherwise>
	        
	         </c:choose>
	         <a href="../editAdditionalField/${fields.id}.html"><button type="button" value="Edit"  class="btn btn-warning">Edit</button></a>&nbsp;&nbsp;&nbsp;
       		 <a href="../deleteAdditionalField/${fields.id}.html"><button type="button" name="${fields.id}" value="Edit" class="btn btn-danger remove">Delete</button></a>
        
         </p></div>
         </c:forEach>
   
    				<!--Textboxes will be added here -->
			</div>
		<!-- <input id="btnAddReq" type="button" class="btn btn-primary"  value="Add Requirement" /> -->
	 <a href="../addAdditionalField.html"><button type="button" class="btn btn-primary">Add Requirement</button></a>
		<input type="hidden" name="fieldName" id="fieldName">
		<input type="hidden" name="fieldType" id="fieldType">
		<input type="hidden" name="fieldRequired" id="fieldRequired">
		
  		 </div><br/>
<div class="container"><br/>
		<!-- <input type="submit" id="btnGet" class="btn btn-success" value="Save">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
		<a href="../viewDepartment.html"><button type="button" class="btn btn-warning">Cancel</button></a>
		
<!-- 		<input type="reset" id="btnGet" class="btn btn-warning" value="Clear"> -->
</div>
</form:form>

</div>
</body>
</html>