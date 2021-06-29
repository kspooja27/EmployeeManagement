<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Management</title>

</head>
<body style="margin-left: 25vw;">
	<h2 style="margin-left: 20px;">Welcome ${user} !</h2>
	<form action="/EmployeeManagementApp/" method="get"
		style="text-align:right; margin-right:100px;">
		<button>
			<span>Logout</span>
		</button>
	</form>
	<h1 style="margin-left: 150px;">Employee Management</h1>

	<table border="1" cellpadding="5">
		<tr>
			<th>Ecode</th>
			<th>Name</th>
			<th>Location</th>
			<th>Email</th>
			<th>Date of Birth</th>
			<th>Actions</th>
		</tr>
		<c:forEach items="${employeeList}" var="employee">
			<tr>

				<td><c:out value="${employee.ecode}" /></td>
				<td><c:out value="${employee.ename}" /></td>
				<td><c:out value="${employee.location}" /></td>
				<td><c:out value="${employee.email}" /></td>
				<td><c:out value="${employee.edob}" /></td>
				<td><a href="/EmployeeManagementApp/employee/${employee.ecode}">Edit</a>
					&nbsp; <a
					href="/EmployeeManagementApp/employeeDelete/${employee.ecode}">Delete</a></td>

			</tr>
		</c:forEach>
	</table>
	<form action="addEmployeeForm" method="get"
		style="margin-top: 20px; margin-left: 250px;">
		<button>
			<span>Add Employees</span>
		</button>
	</form>
	
</body>
</html>