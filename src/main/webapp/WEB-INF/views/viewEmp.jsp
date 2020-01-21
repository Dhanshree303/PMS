<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View List of Emp</title>

<style> 
        table, th, td { 
            border: 1px solid black; 
            border-collapse: collapse; 
        } 
</style>
    
</head>
<body>

	<table border="1">
		<tr>
			<!-- <th>
				<a href="/SpringMVCRevised/empRegister">Register User</a>
			</th> -->
		
			<th>
				<a href="/SpringMVCRevised">Login</a>
			</th>
		
			<th>
				<a href="/SpringMVCRevised/addmanager">Add New Manager</a>
			</th>
			
			<th>
				<a href="/SpringMVCRevised/viewEmp">View Employee List</a>
			</th>
		</tr>
		
		</table>

<br>

	<h3><b>Employee List</b></h3>
	<table>
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Email Id</th>
			<th>Password</th>
			<th>User Type</th>
			<th>Action</th>
		</tr>
		<c:forEach items="${empList}" var="user">
			<tr>
				<td>${user.id}</td>
				<td>${user.name}</td>
				<td>${user.email}</td>
				<td>${user.password}</td>
				<td>${user.usertype}</td>
				<td><a href="editEmp?id=${user.id}">Edit</a> 
				<a href="delete?id=${user.id}">Delete</a></td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>