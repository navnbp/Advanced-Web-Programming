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
    
    $("#btnGet").click( function () {
        var values = "";
        $("input[name=DynamicTextBox]").each(function () {
            values += $(this).val() + "#";
        });
      
        $('#progvalues').val(values); 
        
        var fieldName = "";
        $("input[name=DynamicTextBox2]").each(function () {
         	fieldName += $(this).val() + "#";
         });
        
        fieldType  = "";
        $("select[name=DynamicDropDown]").each(function () {
        	fieldType += $(this).val() + "#";
        });

        fieldRequired=""
        	  $("input:checkbox[name=optional]").each(function () {
        		  if($(this).is(':checked'))
        			  fieldRequired += "1#";
        		  else
        			  fieldRequired += "0#";
        		
              }); 
        $('#fieldName').val(fieldName);
        $('#fieldType').val(fieldType);
        $('#fieldRequired').val(fieldRequired);
       
    });
    $("body").on("click", ".remove", function () {
        $(this).closest("div").remove();
    });
});
function GetDynamicTextBox(value) {
    return '<div class="row"><p><b>Program Name :</b>&nbsp;&nbsp;&nbsp;&nbsp; <input class="textbox" name = "DynamicTextBox" type="text" required="required" style="width: 250px;" placeholder="Program Name"  value = "' + value + '" />&nbsp;&nbsp;&nbsp;&nbsp;' +
            '<input type="button" value="Remove" class="btn btn-danger remove" /></p></div>'
}
function GetDynamicTextBoxForReq(value) {
    return '<div class="row"><p><b>Requirement Name :</b>&nbsp;&nbsp;&nbsp; <input class="textbox" name = "DynamicTextBox2" type="text" style="width: 250px;" required="required" placeholder="Requirement Name" value = "' + value + '" />&nbsp;&nbsp;&nbsp;&nbsp;' +
            '<b>Value Type : </b>&nbsp;&nbsp;&nbsp;&nbsp;<select class="textbox" name="DynamicDropDown" style="width: 100px;"><option value="Number">Number</option><option value="Text">Text</option><option value="File">File</option></select>&nbsp;&nbsp;&nbsp;&nbsp;'+
    		'<input name = "optional" type="checkbox" value="optional">&nbsp;Optional&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'+
            '<input type="button" value="Remove" class="btn btn-danger remove" /></p></div>'
}


</script>

</head>
<body>
<h2>Graduate Program Applications</h2>
<jsp:include page="admin_menu.jsp" />
<!-- 
 <div class="panel panel-default">
      <div class="panel-heading">Panel with panel-default class</div>
     </div> -->

<div class="container">

<form:form  modelAttribute="department">
<div><div><div>
<h3>Add Department</h3><br/>
<div class="row">
<b>Department Name :</b> &nbsp;&nbsp;&nbsp;<form:input class="textbox" path="name" placeholder="Department Name" style="width: 250px;"  required="required"  />
</div></div></div>
<hr>
 <div >
 <div>
<h3>Programs Offered </h3><br/>
  		 <div id="TextBoxContainer">
  		 <div class="row"><p>
  		<b>Program Name :</b> &nbsp;&nbsp;&nbsp; <input class="textbox" name = "DynamicTextBox" type="text" style="width: 250px;" placeholder="Program Name"  required="required" value = "" />&nbsp;&nbsp;&nbsp;
         <input type="button" value="Remove" class="btn btn-danger remove" />
        </p> </div>
    				<!--Textboxes will be added here -->
			</div>
		<input id="btnAdd" type="button" class="btn btn-primary"  value="Add Program" />
		<input type="hidden" name="progvalues" id="progvalues">
		</div>
  		 </div>
<hr>

<h3>Additional Requirements </h3><br/>
<div><div>
  		 <div id="TextBoxContainer2">
  		 <div class="row">
  		 <p>
	  		<b>Requirement Name :&nbsp;&nbsp;&nbsp; </b><input class="textbox" name = "DynamicTextBox2" type="text" style="width: 250px;" required="required" placeholder="Requirement Name" value = "" />&nbsp;&nbsp;&nbsp;
	     <b>  Value Type : &nbsp;&nbsp;&nbsp; </b> <select class="textbox" name="DynamicDropDown" style="width: 100px;">
	        <option value="Number">Number</option>
	        <option value="Text">Text</option>
	        <option value="File">File</option>
	        </select>&nbsp;&nbsp;&nbsp;
	        <input type="checkbox" name="optional" value="optional">&nbsp;Optional &nbsp;&nbsp;&nbsp;
	        
	         <input type="button"  value="Remove" class="btn btn-danger remove" />
        </p> </div>
    				<!--Textboxes will be added here -->
			</div>
			<br/>
		<input id="btnAddReq" type="button" class="btn btn-primary"  value="Add Requirement" />
	 
		<input type="hidden" name="fieldName" id="fieldName">
		<input type="hidden" name="fieldType" id="fieldType">
		<input type="hidden" name="fieldRequired" id="fieldRequired">
		</div></div>
  		 </div>
  		 <br/>
  		 <hr>
<div class="container">
		<input type="submit" id="btnGet" class="btn btn-success" value="Save">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="reset" id="btnGet" class="btn btn-warning" value="Clear">
</div>
</form:form>

</div>
</body>
</html>