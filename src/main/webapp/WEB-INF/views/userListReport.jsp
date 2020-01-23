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
	
	<table border="1" align="center">
		<tr>
			<th>
				<a href="/SpringMVCRevised/addmanager">Add New Manager</a>
			</th>
			
			<th>
				<a href="/SpringMVCRevised/viewEmp">View Employee List</a>
			</th>
			
			<th>
				<a href="/SpringMVCRevised/report">Download Employee Details</a>
			</th>
		</tr>
		
	</table>
	<br>
	<div align="center">
	<a href="/SpringMVCRevised/downloadExcel"><b>Download Report in Excel</b></a>
	&nbsp;&nbsp;
	<a href="/SpringMVCRevised/downloadPdf"><b>Download Report in PDF</b></a>
	</div>
</body>
</html>