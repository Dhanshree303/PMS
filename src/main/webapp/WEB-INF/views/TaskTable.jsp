<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Task Table</title>

<style> 
table, th, td { 
      border: 1px solid black; 
      border-collapse: collapse; 
} 
</style>

</head>
<body>

<table border="1" align="center">
		  <col width="150">
		  <col width="150">
		  <col width="150">
		  
		
			<tr>
				<th>
					<a href="/SpringMVCRevised/addemployee">Add New Employee</a>
				</th>
				
				<th>
					<a href="/SpringMVCRevised/addNewTask">Add New Task</a>
				</th>
				
				<th>
					<a href="/SpringMVCRevised">Login</a>
				</th>
				
				<th>
					<a href="/SpringMVCRevised/taskTable">Task Table</a>
				</th>
			</tr>
		
		</table>
		
	<h3 align="center"><b>Task Report</b></h3>
	<table border="1" align="center">
		<tr>
			<th>Task ID</th>
			<th>Task Name</th>
			<th>Start Date</th>
			<th>End Date</th>
			<th>Task Status</th>
		</tr>
		
		<c:forEach items="${taskList}" var="task">
			<tr>
				<td>${task.id}</td>
				<td>${task.taskname}</td>
				<td>${task.startdate}</td>
				<td>${task.enddate}</td>
				<td>${task.taskStatus}</td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>