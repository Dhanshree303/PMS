<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
       
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Projects</title>

<style> 
        table, th, td { 
            border: 1px solid black; 
            border-collapse: collapse; 
        } 
</style>

</head>
<body>
	
	<h3 align="center"><b>Projects List</b></h3>
	
	<table border="1" align="center">
		<tr>
			<th>ProjectId</th>
			<th>ProjectName</th>
			<th>ProjDescription</th>
			<th>StartDate</th>
			<th>EndDate</th>
			<th>Action</th>
		</tr>
		
		<c:forEach items="${projectList}" var="project">
		<tr>
			<td>${project.pid }</td>
			<td>${project.projectname }</td>
			<td>${project.projdescription }</td>
			<td>${project.startdate }</td>
			<td>${project.enddate }</td>
			<td><a href="addNewTask?projectid=${project.pid}">Add Task</a></td>
			
		</tr>
		</c:forEach>
	</table>

</body>
</html>