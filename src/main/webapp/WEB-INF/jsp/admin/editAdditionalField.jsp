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

<link href='http://fonts.googleapis.com/css?family=Cookie' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script type="text/javascript">
$(function () {
  

   
	
    $("#btnGet").click( function () {
        fieldRequired=""
        	  $("input:checkbox[name=option]").each(function () {
        		  if($(this).is(':checked'))
        			  fieldRequired = "1";
        		  else
        			  fieldRequired = "0";
        		
              }); 
        
        $('#hdnOptional').val(fieldRequired);
     
    });
   
	});


</script>
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
<form:form  modelAttribute="field" method="post">
<div class="row"><h2>Edit Additional Field </h2></div>
</br><div class="row">

	<b>Additional Field Name : </b>&nbsp;&nbsp;&nbsp; <input  class="textbox" type="text" name="fieldName" value="${field.fieldName }" placeholder="Requirement Name" style="width: 250px;" required /> &nbsp;&nbsp;&nbsp;
	 <b>  Value Type :</b>  &nbsp;&nbsp;&nbsp; <select  class="textbox"  name="fieldValueType" style="width: 100px;">
	          <c:choose>
	         <c:when test="${field.fieldValueType eq 'Number' }">
	         <option value="Number" selected="selected">Number</option>
	        <option value="Text">Text</option>
	        <option value="File">File</option>
	         </c:when>
	            <c:when test="${field.fieldValueType eq 'Text' }">
	         <option value="Number">Number</option>
	        <option value="Text" selected="selected" >Text</option>
	        <option value="File">File</option>
	         </c:when>
	            <c:when test="${field.fieldValueType eq 'File' }">
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
	       
	        <c:when test="${field.optional eq true}">
	        <input type="checkbox" name="option" value="optional"  checked="checked">&nbsp;Optional &nbsp;&nbsp;&nbsp;
	        </c:when>
	        <c:otherwise>
	        <input type="checkbox" name="option"  value="optional">&nbsp;Optional &nbsp;&nbsp;&nbsp;
	        </c:otherwise>
	       
	         </c:choose>
	       <!--  <input type="checkbox" name="optional" value="optional">&nbsp;Optional &nbsp;&nbsp;&nbsp; -->
	        <input type="hidden" name="hdnOptional" id="hdnOptional"  /> 
</div><br/><div class="row">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="submit" id="btnGet" value="Save" class="btn btn-success" name="save" /> &nbsp;&nbsp;&nbsp;
<input type="reset" value="clear"  class="btn btn-warning" name="clear" />&nbsp;&nbsp;&nbsp;
  <a href="../deleteAdditionalField/${field.id}.html"><button type="button" name="${field.id}" value="Edit" class="btn btn-danger remove">Delete</button></a>&nbsp;&nbsp;&nbsp;
 <a href="../editDepartment/${deptId}.html"><button type="button" name="${deptId}" value="Edit" class="btn btn-primary">Cancel</button></a>

</div>
</form:form>
</div>


</body>
</html>