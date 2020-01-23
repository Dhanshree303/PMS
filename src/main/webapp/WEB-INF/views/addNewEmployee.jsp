<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
           <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Employee here</title>

<style type="text/css">
input[type=text],input[type=password] {
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

label {
	font-family: "Times New Roman";
	font-size: 15px;
	
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

	<h3 align="center"><b>Add New Employee</b></h3>
	<form:form action="registerEmployee" method="POST"  modelAttribute="user1">
			<table align="center">
			
			
			<tr>
			<td><label>Employee Name</label></td>
			<td><form:input path="name"/></td>
			</tr>
			
	
			<tr>
			<td><label>Email Id</label></td>
			<td><form:input path="email"/></td>
			</tr>
			
			<tr>
			<td><label>Password</label></td>
			<td><form:input path="password"/></td>
			</tr>

			<tr>
				<td align="center" colspan="2" rowspan="2">
				<input type="submit" value="Save" class="button button:hover" /> 
				<input type="reset" value="Reset" class="button button:hover" /></td>
			</tr>

		</table>
	</form:form>

<br>
	<h3 align="center"><b>Employee Details</b></h3>
	<table border="1" align="center">
		<tr>
			<th>Employee Name</th>
			<th>Email ID</th>
			<th>Password</th>
		</tr>
		
		<c:forEach items="${emplist}" var="emp">
		<tr>
			<td>${emp.id}</td>
			<td>${emp.email}</td>
			<td>${emp.password}</td>
		</tr>
		</c:forEach>
	</table>

</body>
</html>