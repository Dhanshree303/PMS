<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
 "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="ISO-8859-1">
<title>Report</title>
</head>
<body>

	<%-- <table border="1">
		<thead>
			<tr>
				<td>id</td>
				<td>name</td>
				<td>usertype</td>
				<td>email</td>
				<td>password</td>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach items="${userList}" var="user">
				<tr>
					
					<td>${user.id}</td>
					<td>${user.name}</td>
					<td>${user.usertype}</td>
					<td>${user.email}</td>
					<td>${user.password}</td>
				</tr>
			</c:forEach>
		</tbody>	
	</table> --%>
	
	<%-- <spring:url value="/report/?type=xls" var="xlsURL"/>
	<spring:url value="/report/?type=pdf" var="pdfURL"/> --%>
	
	<a href="/SpringMVCRevised/downloadExcel">Download Excel</a>
	<a href="/SpringMVCRevised/downloadPdf">Download PDF</a>

</body>
</html>