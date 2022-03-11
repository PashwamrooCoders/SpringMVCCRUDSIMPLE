<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">
	
<title>Liste</title>
</head>
<body>

	<h1 style="text-align: center;color:orange;" class="fas fa-file">Employees List</h1>
	<table class="table table-hover table-striped table-dark" border="2"
		width="70%" cellpadding="2">

		<thead>
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Salary</th>
				<th>Designation</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
		</thead>
		<c:forEach var="emp" items="${list}">
			<tbody>

				<tr>
					<td>${emp.id}</td>
					<td>${emp.name}</td>
					<td>${emp.salary}</td>
					<td>${emp.designation}</td>
					<td><a href="editemp/${emp.id}">Edit</a></td>
					<td><a href="deleteemp/${emp.id}">Delete</a></td>
				</tr>

			</tbody>
		</c:forEach>
	</table>


	<br />
	<a class="btn btn-outline-success btn-block" href="empform">Ajouter
		un employé</a>

</body>
</html>