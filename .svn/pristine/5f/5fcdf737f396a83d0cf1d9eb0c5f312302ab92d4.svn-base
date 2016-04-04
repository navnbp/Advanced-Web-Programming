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
<link rel="stylesheet" href="../css/common.css">
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
<jsp:include page="admin_menu.jsp" />
<div class="container">
</br>
<form:form  modelAttribute="field" method="post">
<div class="row"><h2>Add Additional Field </h2></div>
</br><div class="row">

	<b>Additional Field Name : </b>&nbsp;&nbsp;&nbsp; <input type="text" class="textbox" name="fieldName" value="${field.fieldName }" placeholder="Requirement Name" style="width: 250px;" required /> &nbsp;&nbsp;&nbsp;
	 <b>  Value Type :</b>  &nbsp;&nbsp;&nbsp;
	  <select class="textbox" name="fieldValueType" style="width: 100px;">
	          <option value="Number">Number</option>
	        <option value="Text">Text</option>
	        <option value="File" >File</option>
	         
	        </select>&nbsp;&nbsp;&nbsp;
	       
	       
	        <input type="checkbox" name="option"  value="optional">&nbsp;Optional &nbsp;&nbsp;&nbsp;
	       
	       <!--  <input type="checkbox" name="optional" value="optional">&nbsp;Optional &nbsp;&nbsp;&nbsp; -->
	        <input type="hidden" name="hdnOptional" id="hdnOptional"  /> 
</div><br/><div class="row">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="submit" id="btnGet" value="Save" class="btn btn-success" name="save" /> &nbsp;&nbsp;&nbsp;
<input type="reset" value="clear"  class="btn btn-warning" name="clear" />&nbsp;&nbsp;&nbsp;
   <a href="../admin/editDepartment/${deptId}.html"><button type="button" name="${deptId}" value="Edit" class="btn btn-danger remove">Cancel</button></a>

</div>
</form:form>
</div>


</body>
</html>