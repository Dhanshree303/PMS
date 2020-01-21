<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add new Project</title>

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

<h3 align="center"><b>Add New Project</b></h3>
	<form:form action="saveProject" method="POST"  modelAttribute="project">
		<table align="center">
			
			<tr>
			<td><label>Project Name</label></td>
			<td><form:input path="projectname"/></td>
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
			<td><label>Project Description</label></td>
			<td><form:input path="projdescription"/></td>
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