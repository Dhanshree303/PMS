<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Employee Details</title>
</head>
<body>

	<table border="1">
		<col width="150">
		<col width="150">
		<col width="150">


		<tr>
			<th><a href="/SpringMVCRevised/addemployee">Add New Employee</a>
			</th>
			<th><a href="/SpringMVCRevised/empRegister">Register User</a></th>

			<th><a href="/SpringMVCRevised">Login</a></th>
		</tr>

	</table>
	
	<h3><b>Registration Successful</b></h3>
	<h4>Employee Details</h4>
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
				<td>Employee</td>
			</tr>
	</table>
	

</body>
</html>