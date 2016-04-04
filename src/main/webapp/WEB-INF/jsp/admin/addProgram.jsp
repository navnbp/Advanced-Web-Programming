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
<jsp:include page="admin_menu.jsp" />

<div  class="container">
<div class="row"><h2>Add Program </h2><br/>
<form:form modelAttribute="prog" method="post">
	<b>Program Name : </b>&nbsp;&nbsp;&nbsp; <input  class="textbox" type="text" name="name" style="width: 250px;" placeholder="Program Name" required/>
</div><br/><div class="row">
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="submit" value="Save" class="btn btn-success" name="save">  &nbsp;&nbsp;&nbsp;
<input type="reset" value="clear"  class="btn btn-warning" name="clear">  &nbsp;&nbsp;&nbsp;
	 <a href="../admin/editDepartment/${deptId}.html"><button type="button" name="${deptId}" value="Edit" class="btn btn-danger remove">Cancel</button></a>
</form:form>
</div>
</div>

</body>
</html>