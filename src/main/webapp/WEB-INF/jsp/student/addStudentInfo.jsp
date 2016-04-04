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


<script type="text/javascript">
$(function () {
	
	 $('#international').change(function() {
	        if($(this).is(":checked")) {
	        	 var div = $("<div />");
	             div.html(GetDynamicTextBox(""));
	             $("#TextBoxContainer").append(div);
	        	 $('#hdnTofel').val('1');
	        	
	        }
	        else{
	        	   $("#dynamic").closest("div").remove(); 
	        	$('#hdnTofel').val('0');
	        	
	        }
	                
	    });
	
    $("#btnAdd").bind("click", function () {
        var div = $("<div />");
        div.html(GetDynamicTextBox(""));
        $("#TextBoxContainer").append(div);
        
    });

    $("#btnAddReq").bind("click", function () {
        var div = $("<div />");
        div.html(GetDynamicTextBoxForReq(""));
        $("#TextBoxContainer2").append(div);
        
    });
    
/*     $("#btnGet").click( function () {
        var values = "";
        $("input[name=DynamicTextBox]").each(function () {
            values += $(this).val() + "#";
        });
      
        $('#progvalues').val(values); 
        
      
    }); */
    $("body").on("click", ".remove", function () {
        $(this).closest("div").remove();
    });
});
function GetDynamicTextBox(value) {
    return '<div id="dynamic" class="row">&nbsp;&nbsp;&nbsp;&nbsp;<b>TOFEL</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'+
    '<input class="textbox"   name="tofel" style="width: 250px;" placeholder="TOFEL" style="width: 250px;" required="required" maxlength=3 /><hr/></div>'
}

function GetDynamicTextBoxForReq(value) {
    return '<div class="row"><p>&nbsp;&nbsp;&nbsp;&nbsp;<b>University :&nbsp;&nbsp;&nbsp;&nbsp; </b><input class="textbox"  name = "DynamicTextBox1[]" type="text" style="width: 225px;" required="required" placeholder="University" value = "" />&nbsp;&nbsp;&nbsp;&nbsp;'+
    '<b>  Degree : &nbsp;&nbsp;&nbsp;&nbsp; </b> &nbsp;&nbsp;&nbsp;&nbsp;<input class="textbox"  name = "DynamicTextBox2[]" type="text" style="width: 225px;" required="required" placeholder="Degree" value = "" />&nbsp;&nbsp;</br></br>'+
    '<b>&nbsp;&nbsp;&nbsp;  Major : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b> &nbsp;&nbsp;&nbsp;&nbsp;<input  class="textbox"  name = "DynamicTextBox3[]" type="text" style="width: 225px;" required="required" placeholder="Major" value = "" />&nbsp;&nbsp;&nbsp;'+
    '<b>  Start Date : &nbsp;&nbsp;&nbsp;&nbsp; </b> &nbsp;<input class="textbox"  name = "DynamicTextBox4[]" type="date" id="date" style="width: 225px;" required="required" placeholder="mm/dd/yyyy" value = "" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'+
    '<b>  End Date : &nbsp;&nbsp;&nbsp;&nbsp; </b> &nbsp;&nbsp;&nbsp;&nbsp;<input class="textbox"  name = "DynamicTextBox5[]" id="date" type="date" style="width: 225px;" required="required" placeholder="mm/dd/yyyy" value = "" />&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;'+
    '<input type="button"  value="Remove" class="btn btn-danger remove" /></br></br></br></p> </div>' 
}

</script>
</head>
<body>
<h2>Graduate Program Applications</h2>
<jsp:include page="student_menu.jsp" />

<div class="container">
<form:form action="AddStudentInfo.html" method="post" modelAttribute="studentInfo" >


<div class="row"><h3>Student Details</h3><br/>

    <c:if test="${errorMsg!=null}">
	<div class="alert alert-danger" role="alert">
  <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
  <span class="sr-only">Error:</span>
 ${errorMsg}
</div>
	</c:if>
<br/><br/>
<input type="hidden" type="hdnStudentId" value="${studentInfo.studentId }">
<b>First Name :</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input  class="textbox"  name="firstName"  style="width: 250px;"  style="width: 250px;" value="${studentInfo.firstName }" required="required" placeholder="First Name" /><hr/>
<b>Last Name :</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input class="textbox"   name="lastName" style="width: 250px;" placeholder="Last Name"  value="${studentInfo.lastName } "style="width: 250px;" required="required"  /><hr/>
<b>Email :</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input class="textbox"   name="email" style="width: 250px;" value="${studentInfo.email }"  placeholder="Email ID" style="width: 250px;" required="required"  /><hr/>
<b>Mobile Number :</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input  class="textbox"  name="phoneNumber" style="width: 250px;" placeholder="Mobile Number" style="width: 250px;" required="required"  /><hr/>
<b>CIN :</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input  class="textbox"  name="cin" style="width: 250px;" placeholder="CIN" style="width: 250px;"   /><hr/>

<b>Gender :</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name="gender" value="male" checked="checked"> Male &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="radio" name="gender" value="female"> Female
<!-- <select name="gender">
<option value="Male" />Male</option><option value="Female">Female</option>
<select> --><hr/>
<b>Date of Birth :</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input  class="textbox"  type="date" name="dob" id="date" style="width: 250px;" placeholder="mm/dd/yyyy" style="width: 250px;" required="required"  /><hr/>
<b>Citizen :</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input  class="textbox"   name="citizenship" style="width: 250px;" placeholder="Citizen" style="width: 250px;" required="required" ></input><hr/>
 <div id="TextBoxContainer">
 <div class="row"> 
&nbsp;&nbsp;&nbsp;&nbsp;<b>International Student</b>  &nbsp;&nbsp;&nbsp;&nbsp;  <input type="checkbox" id="international" name="international" onchange="" value="international"/><hr/>
</div>

</div>

 <b>GPA</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
<input  class="textbox"  name="gpa" style="width: 250px;" placeholder="GPA" style="width: 250px;" required="required" maxlength=5 /><hr/>
  <!-- style="display: none;" -->


<input type="hidden" name="hdnTofel" id="hdnTofel" value="0" />  

	 <div id="TextBoxContainer2">
  		 <h4>Educational Details</h4></br>
  
        <div class="row"><p>&nbsp;&nbsp;&nbsp;&nbsp;<b>University :&nbsp;&nbsp;&nbsp;&nbsp; </b><input class="textbox"  name = "DynamicTextBox1[]" type="text" style="width: 225px;" required="required" placeholder="University" value = "" />&nbsp;&nbsp;&nbsp;&nbsp;
    <b>  Degree : &nbsp;&nbsp;&nbsp;&nbsp; </b> &nbsp;&nbsp;&nbsp;&nbsp;<input class="textbox"  name = "DynamicTextBox2[]" type="text" style="width: 225px;" required="required" placeholder="Degree" value = "" />&nbsp;&nbsp;</br></br>
    <b>&nbsp;&nbsp;&nbsp;  Major : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b> &nbsp;&nbsp;&nbsp;&nbsp;<input  class="textbox" name = "DynamicTextBox3[]" type="text" style="width: 225px;" required="required" placeholder="Major" value = "" />&nbsp;&nbsp;&nbsp;
    <b>  Start Date : &nbsp;&nbsp;&nbsp;&nbsp; </b> &nbsp;<input  class="textbox" name = "DynamicTextBox4[]" type="date" id="date" style="width: 225px;" required="required" placeholder="mm/dd/yyyy" value = "" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <b>  End Date : &nbsp;&nbsp;&nbsp;&nbsp; </b> &nbsp;&nbsp;&nbsp;&nbsp;<input class="textbox"  name = "DynamicTextBox5[]" id="date" type="date" style="width: 225px;" required="required" placeholder="mm/dd/yyyy" value = "" />&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
    <input type="button"  value="Remove" class="btn btn-danger remove" /></br></br></br></p> </div>'
    				<!--Textboxes will be added here -->
			</div></br>
			<input id="btnAddReq" type="button" class="btn btn-primary"  value="Add Degree" />


</div>
<hr>
<div class="container">
		<input type="submit" id="btnGet" class="btn btn-success" value="Save">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="reset" id="btnGet" class="btn btn-warning" value="Clear">
		      	<a href="../viewApplications.html"><button type="button" class="btn btn-danger">Cancel</button></a>
</div>

</form:form>
</div>


</body>

</html>