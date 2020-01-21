<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Manager Details</title>
</head>
<body>
	<table border="1">
		<tr>
			<th><a href="/SpringMVCRevised/empRegister">Register User</a></th>

			<th><a href="/SpringMVCRevised">Login</a></th>

			<th><a href="/SpringMVCRevised/addmanager">Add New Manager</a></th>

			<th><a href="/SpringMVCRevised/viewEmp">View Employee</a></th>
		</tr>

	</table>

	<h3><b>Registration Successful</b></h3>
	<h4>Manager Details</h4>
	<table border="1">
		<tr>
			<th>Name</th>
			<th>Email Id</th>
			<th>Password</th>
			<th>User Type</th>
		</tr>
			<tr>
				<td>${name}</td>
				<td>${email}</td>
				<td>${password}</td>
				<td>Manager</td>
			</tr>
	</table>


</body>
</html>