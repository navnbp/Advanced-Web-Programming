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
Student Info</br>
Student ID : ${app.studentInformation.studentId } </br>
First Name : ${app.studentInformation.firstName } </br>
Last Name : ${app.studentInformation.lastName } </br>
Email : ${app.studentInformation.email } </br>
Mobile : ${app.studentInformation.phoneNumber } </br>
CIN : ${app.studentInformation.cin } </br>
Gender : ${app.studentInformation.gender } </br>
DOB : ${app.studentInformation.dob } </br>
Citizenship : ${app.studentInformation.citizenship } </br> 
isInternationalStudent : ${app.studentInformation.isInternationalStudent } </br> 

---------------------------------------------------------</br>
<%-- User Details</br>
Student ID : ${stuInfo.user.id } </br>
First Name : ${stuInfo.user.firstName } </br>
Last Name : ${stuInfo.user.lastName } </br>
Email : ${stuInfo.user.emailId } </br>

---------------------------------------------------------</br>
 --%>Applications Details</br>
<<%-- c:forEach items="${ stuInfo.applications}" var="stu"> --%>
  ${app.id } -->  ${app.dept.name } --> ${app.program.name } ---> Term : ${app.term } --> status : ${app.status.status } </br>
<%-- </c:forEach> --%>
---------------------------------------------------------</br>
AcademicRecords</br>

GPA : ${app.studentInformation.academicRecords.gpa } </br>
TOFEL : ${app.studentInformation.academicRecords.tofel } </br>
Transript : ${app.studentInformation.academicRecords.transcript } </br>

---------------------------------------------------------</br>

Educational Background</br>
<c:forEach items="${app.studentInformation.educationalBackground }" var="edu">

${edu.id } ---> ${edu.university } ---> ${edu.degree } ---> ${edu.major } ---> ${edu.startDate } ---> ${edu.endDate} </br>
</c:forEach> </br>

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