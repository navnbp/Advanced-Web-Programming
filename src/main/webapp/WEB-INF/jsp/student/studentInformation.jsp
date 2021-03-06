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
     <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
      <script src="http://code.jquery.com/jquery-migrate-1.2.1.js"></script>



<script type="text/javascript">
$(function () {
	
/* 	 if($("#hdnTranscript").val()!= '')
	{
		
		 $('#file').removeAttr('required');
	}
	 else{
		
	 }
 */	
 
 
 
 
 if ($.browser.mozilla)
{
 if ($('.datepicker')[0].type != 'date') $('.datepicker').datepicker();
 $(function () {
     $(".datepicker").datepicker({
         changeMonth: true,
         changeYear: true,
         yearRange: "1900:2015",
         dateFormat: "yy-mm-dd",
         defaultDate: '1900-01-01'
     });
 });
}
 
 
 
 
	if ($("#international").is(':checked')){
		   $("#dynamic").show();
		   $('#tofel').attr('required','required');
		   $('#hdnTofel').val('1');
		}
		else
		{
			 $("#dynamic").hide();
			 $('#tofel').removeAttr('required');
			 $('#hdnTofel').val('0');
			 $('#tofel').val('');
		}
	
	  $('#international').change(function() {
	        if($(this).is(":checked")) {
	        	 $("#dynamic").show();
	        	 $('#hdnTofel').val('1');
	  		   $('#tofel').attr('required','required');
	        }
	        else{
	        	 $("#dynamic").hide();
				 $('#tofel').removeAttr('required');
				 $('#hdnTofel').val('0');
				 $('#tofel').val('');
	        }
	                
	    });

});

</script>
</head>
<body>
<h2>Graduate Program Applications</h2>
<jsp:include page="student_menu.jsp" />



<h3><span style="padding-left: 17%;">               Student Details</span></h3></br>

	
 <div class="panel-body" ><!-- class="jumbotron" -->
<form action="studentInformation.html" method="post" enctype="multipart/form-data">
<div class=" form-horizontal ">



		<div class="form-group">
		<input type="hidden" name="hdnStudentId" value="${studentInfo.studentId}"/>
		<input type="hidden" name="hdnApplicationId" value="${sessionApplicationId}"/>
			<label for=""  class="control-label col-sm-2"> First Name&nbsp;<font color='red'>*</font>	</label> 
		<div class="col-sm-3">
		<input  class="textbox" name="firstName"  style="width: 250px;"  style="width: 250px;" value="${studentInfo.firstName }" required="required" placeholder="First Name" />
		<hr>
			</div>
		</div>
			
			


		<div class="form-group">
			<label for=""  class="control-label col-sm-2">Last Name&nbsp;<font color='red'>*</font></label> 
		<div class="col-sm-3">
		<input  class="textbox"  name="lastName" style="width: 250px;"  value="${studentInfo.lastName } "style="width: 250px;" required="required"  placeholder="Last Name"  />
		<hr>
			</div>
			</div>




		<div class="form-group">
			<label for=""  class="control-label col-sm-2">Email &nbsp;<font color='red'>*</font></label> 
		<div class="col-sm-3">
		<input class="textbox" type="email"  name="email" style="width: 250px;" value="${studentInfo.email }"  placeholder="Email ID" style="width: 250px;" required="required"  />
		<hr>
			</div>
			</div>




		<div class="form-group"><label for=""  class="control-label col-sm-2">Mobile Number	&nbsp;<font color='red'>*</font></label> 
		<div class="col-sm-3">
<input  class="textbox"  name="phoneNumber" style="width: 250px;" placeholder="Mobile Number" value="${studentInfo.phoneNumber }" style="width: 250px;" required="required"  />		
		<hr>
			</div>
			</div>




		<div class="form-group">
			<label for=""  class="control-label col-sm-2">CIN &nbsp;	</label> 
		<div class="col-sm-3">
		<input  class="textbox"  name="cin" value="${studentInfo.cin }"  style="width: 250px;" placeholder="CIN" style="width: 250px;"   /><hr/>
			</div>
			</div>







		<div class="form-group">
			<label for=""  class="control-label col-sm-2">Gender&nbsp;<font color='red'>*</font>
			</label> 
		<div class="col-sm-3">
		<c:choose>
			<c:when test="${studentInfo.gender  eq 'female'}">
			<input type="radio" name="gender" value="male" > Male &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			  <input type="radio" name="gender" value="female" checked="checked"> Female
			</c:when>
			<c:otherwise>
			<input type="radio" name="gender" value="male" checked="checked" > Male &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			  <input type="radio" name="gender"  value="female"> Female
			</c:otherwise>
			</c:choose>
		<hr>
			</div>
			</div>



		<div class="form-group">
			<label for=""  class="control-label col-sm-2">Date of Birth &nbsp;<font color='red'>*</font></label> 
		<div class="col-sm-3">
		<input class="textbox"  type="date" name="dob"  placeholder="dd-MM-yyyy" value="<fmt:formatDate value="${studentInfo.dob}" pattern="yyyy-MM-dd"   />" id="date" style="width: 250px;"  style="width: 250px;" required="required"  />
		<hr>
			</div>

			</div>



		<div class="form-group">
			<label for=""  class="control-label col-sm-2">Citizen &nbsp;<font color='red'>*</font></label> 
		<div class="col-sm-3">
		<input  class="textbox"  name="citizenship"  value='${studentInfo.citizenship}' style="width: 250px;" placeholder="Citizen" style="width: 250px;" required="required" ></input>
 
		<hr>
			</div>

			</div>

		<div class="form-group">
			<label for=""  class="control-label col-sm-2">International Student	&nbsp;<font color='red'>*</font></label> 
		<div class="col-sm-3">
		<c:choose>
			<c:when test="${studentInfo.isInternationalStudent eq true}">
			<input type="checkbox" id="international" name="international" checked="checked" value="international"/>
			</c:when>
			<c:otherwise>
			<input type="checkbox" id="international" name="international"  value="international"/>
			</c:otherwise>
		</c:choose>
		<hr>
			</div>

			</div>

		<div class="form-group" id="dynamic">
			<label for=""  class="control-label col-sm-2">TOFEL &nbsp;<font color='red'>*</font></label> 
		<div class="col-sm-3">
		<input  class="textbox"  id="tofel" name="tofel" style="width: 250px;" placeholder="TOFEL" value="${studentInfo.academicRecords.tofel }" style="width: 250px;" required="required" maxlength=3 />
		
		<hr>
			</div>

			</div>



		<div class="form-group">
			<label for=""  class="control-label col-sm-2">GPA &nbsp;<font color='red'>*</font>	</label> 
		<div class="col-sm-3">
		<input class="textbox"  name="gpa" style="width: 250px;" value="${studentInfo.academicRecords.gpa }" placeholder="GPA" style="width: 250px;" required="required" maxlength=5 />
		<hr>
			</div>

			</div>
			
			
		<div class="form-group">
			<label for=""  class="control-label col-sm-2">GRE &nbsp;	</label> 
		<div class="col-sm-3">
		<input class="textbox"  name="gre" style="width: 250px;" value="${studentInfo.academicRecords.gre }" placeholder="GPA" style="width: 250px;"  maxlength=5 />
		<hr>
			</div>

			</div>
			



			
		<div class="form-group">
		<input type="hidden" name="hdnTranscript" id="hdnTranscript" value="${studentInfo.academicRecords.transcript.trim()}" />
			<label for=""  class="control-label col-sm-2">Transcript &nbsp;<font color='red'>*</font></label> 
		<div class="col-sm-8">
		
<input class="textbox" id="file" type="file" id="transcript" name="transcript" style="width: 250px;" placeholder="Transcript" style="width: 250px;" <c:if test="${trans== null}">required</c:if>  /></br>
		<c:if test="${studentInfo.academicRecords.transcript.trim() ne null}">
<a href="viewFile.html?id=${studentInfo.application.id}&file=${studentInfo.academicRecords.transcript}" target="_blank">${studentInfo.academicRecords.transcript }</a> &nbsp;&nbsp;&nbsp; 
<font color='red'> Choose another file to replace existing file</font>
</c:if> 
		<hr>
			</div>

			</div>

	
		


		<div class="form-group">
		<div class="col-sm-2"></div>
			<div >
			<input type="hidden" name="hdnTofel" id="hdnTofel" value="0" />  
		<input type="submit" id="btnGet" class="btn btn-success" value="Save & Continue">&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="viewApplications.html"><button type="button" class="btn btn-danger">Cancel</button></a>				
				</div>
					</div>

			
<!-- ------------------------ -->
			</div>
			</form>
			</div>

			
			
			
			

<%-- 
<div class="row">
<h3>Student Details</h3><br/>

<br/><br/>
<input type="hidden" name="hdnStudentId" value="${studentInfo.studentId}"/>
<input type="hidden" name="hdnApplicationId" value="${sessionApplicationId}"/>
<!-- applicationId -->
<b>First Name :</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input  class="textbox" name="firstName"  style="width: 250px;"  style="width: 250px;" value="${studentInfo.firstName }" required="required" placeholder="First Name" /><hr/>
<b>Last Name :</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input  class="textbox"  name="lastName" style="width: 250px;" placeholder="Last Name"  value="${studentInfo.lastName } "style="width: 250px;" required="required"  /><hr/>
<b>Email :</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input class="textbox"   name="email" style="width: 250px;" value="${studentInfo.email }"  placeholder="Email ID" style="width: 250px;" required="required"  /><hr/>
<b>Mobile Number :</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input  class="textbox"  name="phoneNumber" style="width: 250px;" placeholder="Mobile Number" value="${studentInfo.phoneNumber }" style="width: 250px;" required="required"  /><hr/>
<b>CIN :</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input  class="textbox"  name="cin" value="${studentInfo.cin }"  style="width: 250px;" placeholder="CIN" style="width: 250px;"   /><hr/>

<b>Gender :</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<c:choose>
<c:when test="${studentInfo.gender  eq 'male'}">
<input type="radio" name="gender" value="male" checked="checked"> Male &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="radio" name="gender" value="female"> Female
</c:when>
<c:otherwise>
<input type="radio" name="gender" value="male" > Male &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="radio" name="gender" checked="checked" value="female"> Female
</c:otherwise>
</c:choose>
<hr/>

<b>Date of Birth :</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input class="textbox"  type="date" name="dob"  value="<fmt:formatDate value="${studentInfo.dob}" pattern="yyyy-MM-dd"   />" id="date" style="width: 250px;"  style="width: 250px;" required="required"  /><hr/>
<b>Citizen :</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input  class="textbox"  name="citizenship"  value='${studentInfo.citizenship}' style="width: 250px;" placeholder="Citizen" style="width: 250px;" required="required" ></input><hr/>
 <div id="TextBoxContainer">
 <div class="row"> 
&nbsp;&nbsp;&nbsp;&nbsp;<b>International Student</b>  &nbsp;&nbsp;&nbsp;&nbsp;  
<c:choose>
<c:when test="${studentInfo.isInternationalStudent eq true}">
<input type="checkbox" id="international" name="international" checked="checked" value="international"/><hr/>
</c:when>
<c:otherwise>
<input type="checkbox" id="international" name="international"  value="international"/><hr/>
</c:otherwise>
</c:choose>
<div id="dynamic" class="row">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<b>TOFEL</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input  class="textbox"  id="tofel" name="tofel" style="width: 250px;" placeholder="TOFEL" value="${studentInfo.academicRecords.tofel }" style="width: 250px;" required="required" maxlength=3 /><hr/></div>

</div>

</div>

 <b>GPA</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
<input class="textbox"  name="gpa" style="width: 250px;" value="${studentInfo.academicRecords.gpa }" placeholder="GPA" style="width: 250px;" required="required" maxlength=5 /><hr/>

<input type="hidden" name="hdnTranscript" id="hdnTranscript" value="${studentInfo.academicRecords.transcript.trim()}" />
<b>Transcript</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<c:if test="${studentInfo.academicRecords.transcript.trim() ne null}">
<a href="viewFile/${studentInfo.academicRecords.transcript}.html" target="_blank">${studentInfo.academicRecords.transcript }</a> &nbsp;&nbsp;&nbsp; 
<font color='red'> Choose another file to replace existing file</font>
</c:if> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</br>
<input class="textbox" id="file" type="file" id="transcript" name="transcript" style="width: 250px;" placeholder="Transcript" style="width: 250px;" <c:if test="${trans== null}">required</c:if>  />

<input type="hidden" name="hdnTofel" id="hdnTofel" value="0" />  
</div> --%>

<!-- <div class="container">
		<input type="submit" id="btnGet" class="btn btn-success" value="Save & Continue">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="viewApplications.html"><button type="button" class="btn btn-danger">Cancel</button></a>
</div>

</form>
</div>

 -->
</body>

</html>