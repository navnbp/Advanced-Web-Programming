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
<link rel="stylesheet" href="../css/common.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<script type="text/javascript">
$(function () {
	
	
	
	
if($('#hdnAdditionalFieldsCount').val()=='0'){	
	
	$('#btnGetSubmit').show();
	$('#btnGetSave').show();
	$('#btnGet').hide();
}
else
{
	$('#btnGetSubmit').hide();
	$('#btnGetSave').hide();
	$('#btnGet').show();
	}
	
    $("#btnAdd").bind("click", function () {
        var div = $("<div />");
        div.html(GetDynamicTextBox(""));
        $("#TextBoxContainer").append(div);
        
    });

  
    
/*     $("#btnAddReq").click( function(){
    		 alert($('$count').val());
			    var value=$('$count').val();
			    value=value+1;
			    
			    $('$count').val(value);
			    $('#btnGetSubmit').prop("disabled", false);
			    $('#btnGetSubmit').prop("disabled", false);
			    $('#btnGetSubmit').prop("disabled", false);
    }); */
    
    $("#btnAddReq").bind("click", function () {
    
    	var div = $("<div />");
        div.html(GetDynamicTextBoxForReq(""));
        $("#TextBoxContainer2").append(div);
    });
    

    $("body").on("click", ".remove", function () {
        $(this).closest("div").remove();
        
    /*     var value=$('$count').val();
        value=value+1;
        $('$count').val(value);
        
        if($('#hdnBackgroundCt').val()=='0' && $('#count').val()=='0')
    	{
    		  $('#btnGetSubmit').attr("disabled","disabled");
    		  $('#btnGetSave').attr("disabled","disabled");
    		  $('#btnGet').attr("disabled","disabled");
    		
    	} */
    });
});


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
<form:form action="educationalBackground.html" method="post" modelAttribute="background" >
<div class="row">
<h4>Educational Details</h4></br>
<c:if test="${errorMsg ne null }">
 
	<div class="alert alert-danger" role="alert">
  <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
  <span class="sr-only">Error:</span>
 ${errorMsg}
</div></br>
</c:if>


<input type="hidden" name="hdnBackgroundCt" id="hdnBackgroundCt" value="${educationBackgroundCount}" />
 
<table class="table table-hover ">
  <thead class="thead-default">
    <tr>
      
      <th>University </th>
      <th>Degree</th>
      <th>Major</th>
      <th>Start Date</th>
      <th>End Date</th>
      <th></th>
      
    </tr>
  </thead>
  <tbody>
 
  <c:forEach items="${ background}" var="b">
    <tr>
      <td class="col-md-2" scope="row">${b.university}</td>
      <td class="col-md-2">${b.degree}</td>
      <td class="col-md-2">${b.major}   </td>
     
         <td class="col-md-2"> <fmt:formatDate type="date" value="${b.startDate}" /></td>
          <td class="col-md-2"> <fmt:formatDate type="date" value="${b.endDate}" /></td>
     
      <td class="col-md-2">
       <a href="deleteEducationalBackground.html?backgroundId=${b.id}"><button type="button" class="btn btn-danger">Remove</button></a>&nbsp;&nbsp;
      
       </td>
    </tr>
</c:forEach>
   </tbody>
</table>


<br/>
<hr>

</div>


<div class="row">

	 <div id="TextBoxContainer2">
  		 <h4>Add Educational Details</h4></br>
  <c:if test="${ educationBackgroundCount eq '0'}">
    <div class="row"><p>&nbsp;&nbsp;&nbsp;&nbsp;<b>University :&nbsp;&nbsp;&nbsp;&nbsp; </b><input class="textbox"  name = "DynamicTextBox1[]" type="text" style="width: 225px;" required="required" placeholder="University" value = "" />&nbsp;&nbsp;&nbsp;&nbsp;
    <b>  Degree : &nbsp;&nbsp;&nbsp;&nbsp; </b> &nbsp;&nbsp;&nbsp;&nbsp;<input class="textbox"  name = "DynamicTextBox2[]" type="text" style="width: 225px;" required="required" placeholder="Degree" value = "" />&nbsp;&nbsp;</br></br>
    <b>&nbsp;&nbsp;&nbsp;  Major : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b> &nbsp;&nbsp;&nbsp;&nbsp;<input  class="textbox" name = "DynamicTextBox3[]" type="text" style="width: 225px;" required="required" placeholder="Major" value = "" />&nbsp;&nbsp;&nbsp;
    <b>  Start Date : &nbsp;&nbsp;&nbsp;&nbsp; </b> &nbsp;<input  class="textbox" name = "DynamicTextBox4[]" type="date" id="date" style="width: 225px;" required="required" placeholder="mm/dd/yyyy" value = "" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <b>  End Date : &nbsp;&nbsp;&nbsp;&nbsp; </b> &nbsp;&nbsp;&nbsp;&nbsp;<input class="textbox"  name = "DynamicTextBox5[]" id="date" type="date" style="width: 225px;" required="required" placeholder="mm/dd/yyyy" value = "" />&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
    <input type="button"  value="Remove" class="btn btn-danger remove" /></br></br></br></p> </div>
    	</c:if>			<!--Textboxes will be added here -->
			</div></br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id="btnAddReq" type="button" class="btn btn-primary"  value="Add Education" />
			<input type="hidden" name="count" id="count" />

</div>
<hr>
<div class="container">
<input type="hidden" name="hdnAdditionalFieldsCount" id="hdnAdditionalFieldsCount" value="${additionalFieldsCount }" />
<input type="hidden" name="hdnApplicationId" id="hdnApplicationId" value="${sessionApplicationId}" /> 
		<input type="submit" id="btnGet" name="SaveContinue" class="btn btn-success" value="Save & Continue">
		<input type="submit" style="display:none;" id="btnGetSave" name="Save" class="btn btn-warning" value="Save">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="submit" style="display:none;" id="btnGetSubmit" name="Submit" class="btn btn-success" value="Submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="viewApplications.html"><button type="button" class="btn btn-danger">Cancel</button></a>
</div></br></form:form>
</div>






</body>

</html>