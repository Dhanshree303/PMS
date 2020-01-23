<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Manager here</title>

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
 
</style>

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


	<h3 align="center"><b>Add New Manager</b></h3>
	<form:form action="registerManager" method="POST"  modelAttribute="user">
			<table align="center">
			
			<tr>
			<td><label>Manager Name</label></td>
			<td><form:input path="name"/></td>
			</tr>
			
	
			<tr>
			<td><label>Email Id</label></td>
			<td><form:input path="email"/></td>
			</tr>
			
			<tr>
			<td><label>Password</label></td>
			<td><form:password path="password"/></td>
			</tr>

			<tr>
				<td align="center" colspan="2" rowspan="2">
				<input type="submit" value="Save" class="button button:hover"/> 
				<input type="reset" value="Reset" class="button button:hover"/>
				</td>
			</tr>

		</table>
	</form:form>


</body>
</html>