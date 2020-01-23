<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
   <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Task here</title>
</head>
<style type="text/css">
input[type=text],[type=Date] {
  width: 100%;
  padding: 8px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

.button {
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
  cursor: pointer;
  color: black;
  border: 2px solid #4CAF50;;
  border-radius: 8px;
  padding: 5px;
  width: 80px;
}

.button:hover {
  background-color: #4CAF50; /* Green */
  color: white;
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
				
				<!-- <th>
					<a href="/SpringMVCRevised/addNewTask">Add New Task</a>
				</th> -->
				
				<th>
					<a href="/SpringMVCRevised">Logout</a>
				</th>
				
				<!-- <th>
					<a href="/SpringMVCRevised/taskTable">Task Table</a>
				</th> -->
			</tr>
		
		</table>

	<h3 align="center"><b>Add New Task</b></h3>
	<form:form action="saveTask" method="POST"  modelAttribute="task">
		<table align="center">
			
			<tr>
			<td><form:hidden path="projectid"/></td>
			</tr>
			
			<tr>
			<td><label>Task Name</label></td>
			<td><form:input path="taskname"/></td>
			</tr>
			
	
			<tr>
			<td><label>Start Date</label></td>
			<td><form:input path="startdate" type="date"/></td>
			</tr>
			
			<tr>
			<td><label>End Date</label></td>
			<td><form:input path="enddate" type="date"/></td>
			</tr>
			
			<tr>
			<td><label>Task Status</label></td>
			<td><form:input path="taskStatus"/></td>
			</tr>
			
			<tr>
			<td><label>Task Description</label></td>
			<td><form:input path="taskDescription"/></td>
			</tr>

			<tr>
				<td align="center" colspan="2" rowspan="2">
				<input type="submit" value="Save" class="button button:hover"/> 
				<input type="reset" value="Reset" class="button button:hover"/>
				</td>
			</tr>

		</table>
	</form:form>
	
	<br><br>
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
				<td><a href="assignTask?taskid=${task.id}&?projectid=${task.projectid}">Not Assigned</a></td>
			</tr>
		</c:forEach>
	</table>
	
</body>
</html>