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
<script type="text/javascript" src="http://code.jquery.com/jquery-2.2.1.min.js"></script>

	<script type="text/javascript">
	$(function(){
		

		 $("#btnGet").click( function () {
		     var value=$('#program').val();
		     $("#hdnProg").val(value);
		        });
		
		 $('#dept').change(function(){
			 var value=$( "#dept").val();
			 if(value==0)
			 {
				 $("#div").hide();
				 $("#btnGet").attr('disabled','disabled');
			 }
		 });
		 
	    $('#dept').change(function(){
	    	var deptId = $( "#dept").val();
	    	$.ajax({
	            url: '../student/getPrograms.html',
	            data: ({
	                    id : deptId,
	                }),
	                success: function(data)
	                {
	                	
	                	 $("#divProg").html(data);
	                	 $("#div").show();
	                	 $("#btnGet").removeAttr('disabled')
	                }
	        });
	    	
	    });
	});
	
	
	</script>
</head>
<body>
<h2>Graduate Program Applications</h2>
<jsp:include page="student_menu.jsp" />

<div class="container">
 <h3>Add Application</h3></br>
 <div ><!-- class="jumbotron" -->

<form <%-- :form modelAttribute="app" --%> action="addNewApplication.html"  method="post">
<div class="row ">
<input type="hidden" id="hdnStudentId" name="hdnStudentId" value="${studentId }"/>
 &nbsp;&nbsp;&nbsp;&nbsp;<b>Department </b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<select id="dept" class="textbox" name="dept"  style="width: 250px;">
<option value="0">   -- Select --   </option>
<c:forEach items="${dept}" var="d">
<option value="${d.id }">${d.name}</option>
</c:forEach>
</select>
</div>
<div id="div" style="display: none;">
<div class="row"  id="divProg"> 

<!-- Programs dropdown --></div>
<hr/>
<input type="hidden" id="hdnProg" name="hdnProg" value=""/>
&nbsp;<b>Term</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<!-- <input type="text" name="term"  maxlenth=15 required/> -->
<input type="text" id="term" class="textbox" name="term" style="width: 250px;" />

</br/></br/></br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" id="btnGet" class="btn btn-success" value="Continue" disabled="disabled">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      	<a href="viewApplications.html"><button type="button" class="btn btn-danger">Cancel</button></a>
</div>
</form>
</div>
</div>


</body>

</html>