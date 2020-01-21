<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login here</title>

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
<br><br>

	<h3 align="center" font-family="Times New Roman"><b>Login Here</b></h3>
	<form:form action="authenticate" method="POST" modelAttribute="user">
	<table align="center">
	<tr>
		<td><label>Username</label></td>
		<td><form:input path="email" /><br></td>
	</tr>
	
	<tr>
		<td><label>Password</label></td>
		<td><form:password path="password" /><br></td>
	</tr>
	
	<tr>
		<td align="center" colspan="2" rowspan="2">
		<input type="submit" value="Login" class="button button:hover"/>
		<input type="reset" value="Reset" class="button button:hover"/>
		</td>
	</tr>
	</table>
	</form:form>
<br>
<!-- <div style="text-align:center"><b>
New User Registration<a href="/SpringMVCRevised/empRegister">HERE</a>
</b></div> -->
</body>
</html>