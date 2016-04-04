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
<link rel="stylesheet" href="../css/common.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>



</head>
<body>
<h2>Graduate Program Applications</h2>
<jsp:include page="student_menu.jsp" />

<div class="container">
 <h3>Add Additional Requirements</h3></br>
 <div class="panel-body" ><!-- class="jumbotron" -->
<form action="addAdditionalRequirement.html" method="post" enctype="multipart/form-data">
<div class=" form-horizontal ">
	
		<c:forEach items="${records }"  var="rec" >
			
			<c:if test="${rec.additionalField.fieldValueType eq 'Number' }">
			<div class="form-group">
			<label for=""  class="control-label col-sm-2">${rec.additionalField.fieldName}
			<c:if test="${rec.additionalField.optional eq false}">
			<font color='red'>*</font>
			</c:if>
			</label> 
			<div class="col-sm-3">
			<input type="text"  class="textbox" name="number[]" value="${rec.fieldValue}" placeholder="${rec.additionalField.fieldName}" <c:if test="${rec.additionalField.optional eq false}">required</c:if>><hr>
			</div>
			
			</div>
			</c:if>
		</c:forEach>
		
			<c:forEach items="${records }"  var="rec" >
			<c:if test="${rec.additionalField.fieldValueType eq 'Text'}">
				<div class="form-group">
			<label for=""  class="control-label col-sm-2">${rec.additionalField.fieldName}
			<c:if test="${rec.additionalField.optional eq false}">
			<font color='red'>*</font>
			</c:if>
			
			</label>
			<div class="col-sm-3">
			<input type="text" class="textbox"  name="text[]" value="${rec.fieldValue}" placeholder="${rec.additionalField.fieldName}" <c:if test="${rec.additionalField.optional eq false}">required</c:if>><hr>
				</div></div>
				</c:if>
			</c:forEach>
				<c:forEach items="${records }"  var="rec" >
				<c:if test="${rec.additionalField.fieldValueType eq 'File'}">
				<div class="form-group">
			<label for=""  class="control-label col-sm-2">${rec.additionalField.fieldName}
			
						<c:if test="${rec.additionalField.optional eq false}">
			<font color='red'>*</font>
			</c:if>
			
			</label>
			<div class="col-sm-8">
			
			<input type="file" class="textbox"  name="file[]" <c:if test="${rec.additionalField.optional eq false}"></c:if>>
			</br>
			<c:if test="${rec.fieldValue ne ''}">
			
			<a href="viewFile.html?id=${sessionApplicationId}&file=${rec.fieldValue}" target="_blank">${rec.fieldValue}</a> &nbsp;&nbsp;&nbsp;<font color='red'> Choose another file to replace existing file</font>
		  <c:if test="${rec.additionalField.optional eq true}">
			&nbsp;&nbsp; &nbsp; <a href="removeFile/${rec.id }.html"> Remove</a></c:if> 
			</c:if>
			<hr>
				</div></div>
				</c:if>
			</c:forEach>
	
	
		<div class="form-group">
		<div class="col-sm-2"></div>
			<div >
			<input type="submit" class="btn btn-warning"  name="Save" value="Save"/>&nbsp;&nbsp;&nbsp;&nbsp;
<input type="submit" class="btn btn-success"  name="Submit" value="Submit"/>&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="viewApplications.html"><button type="button" class="btn btn-danger">Cancel</button></a>
				</div>
					</div>



</div>

</form>
</div>

</div>


</body>

</html>