<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


---------------------------------------------------------</br>
 User Details</br>
Student ID : ${usr.id } </br>
First Name : ${usr.firstName } </br>
Last Name : ${usr.lastName } </br>
Email : ${usr.emailId } </br>


<c:forEach items="${usr.studentInformation }" var="stuInfo">
Student Info</br>
Student ID : ${stuInfo.studentId } </br>
First Name : ${stuInfo.firstName } </br>
Last Name : ${stuInfo.lastName } </br>
Email : ${stuInfo.email } </br>
Mobile : ${stuInfo.phoneNumber } </br>
CIN : ${stuInfo.cin } </br>
Gender : ${stuInfo.gender } </br>
DOB : ${stuInfo.dob } </br>
Citizenship : ${stuInfo.citizenship } </br> 
isInternationalStudent : ${stuInfo.isInternationalStudent } </br> 

---------------------------------------------------------</br>
<%-- User Details</br>
Student ID : ${stuInfo.user.id } </br>
First Name : ${stuInfo.user.firstName } </br>
Last Name : ${stuInfo.user.lastName } </br>
Email : ${stuInfo.user.emailId } </br>

---------------------------------------------------------</br>
 --%>Applications Details</br>
<<%-- c:forEach items="${ stuInfo.applications}" var="stu"> --%>
  ${stuInfo.application.id } -->  ${stuInfo.application.dept.name } --> ${stuInfo.application.program.name } ---> Term : ${stuInfo.application.term } --> status : ${stuInfo.application.status.status } </br>
<%-- </c:forEach> --%>
---------------------------------------------------------</br>
AcademicRecords</br>

GPA : ${stuInfo.academicRecords.gpa } </br>
TOFEL : ${stuInfo.academicRecords.tofel } </br>
Transript : ${stuInfo.academicRecords.transcript } </br>

---------------------------------------------------------</br>

Educational Background</br>
<c:forEach items="${stuInfo.educationalBackground }" var="edu">

${edu.id } ---> ${edu.university } ---> ${edu.degree } ---> ${edu.major } ---> ${edu.startDate } ---> ${edu.endDate} </br>
</c:forEach> </br>
</c:forEach>
<%-- -----------------------------------------------------------------</br>
Additional fields count</br>
<c:forEach items="${ stuInfo.applications}" var="stu">
${stu.additionalRecords.size()} </br>
</c:forEach>

 --%>
-----------------------------------------------------------------
Additional Fields</br>

<%-- <c:if test="${stuInfo.applications.additionalRecords ne null}"> --%>

-<%--  <c:forEach items="${stuInfo.applications }" var="app">

 </br>------${app.id } -->  ${app.dept.name }-----</br>
 <c:forEach items="${app.additionalRecords}" var="b">
${b.id } ---> ${b.fieldValue } ---> ${b.additionalField.fieldName } </br>
</c:forEach>
</c:forEach> </br>  --%>
<%-- </c:if> --%>
-----------------------------------------------------------------</br>
 
</body>
</html>