<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Assign Task</title>

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
			<th><a href="/SpringMVCRevised/addemployee">Add New Employee</a>
			</th>

			<th><a href="/SpringMVCRevised/addProject">Add Project</a></th>
		</tr>

	</table>
	
	<h3 align="center"><b>Assign Task</b></h3>
	<form:form action="assigned" method="POST"  modelAttribute="assignProject">
		<table align="center">
			
			<tr>
			<td><label>Project Id</label></td>
			<td><form:input path="projectid"/></td>
			</tr>
			
			<tr>
			<td><label>Task Id</label></td>
			<td><form:input path="id"/></td>
			</tr>
			
			<tr>
			<td><label>Task Name</label></td>
			<td><form:input path="taskname"/></td>
			</tr>
			
			<tr>
			<td><label>Start Date</label></td>
			<td><form:input path="startdate" /></td>
			</tr>
			
			<tr>
			<td><label>End Date</label></td>
			<td><form:input path="enddate" /></td>
			</tr>

			<tr>

				<td><label>Employee Name</label></td>
				<td><form:select path="empname" multiple="false">
						<form:options items="${empname}" />
					</form:select></td>
			</tr>

			<tr>
				<td align="center" colspan="2" rowspan="2">
				<input type="submit" value="Assigned" class="button button:hover"/> 
				<input type="reset" value="Reset" class="button button:hover"/>
				</td>
			</tr>

		</table>
	</form:form>
	
</body>
</html>