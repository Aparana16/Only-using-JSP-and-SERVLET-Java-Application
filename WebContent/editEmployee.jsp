
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="Css/addEmployee.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Edit-Details</title>
</head>
<body> 

	<c:set var="emobj" value='${requestScope["editList"]}' />


	<div class="container bg-light" style="margin-top: 50px;">
		<marquee  style="color:blue;font-size:200%; padding:10px; text-shadow: 5px 5px 4px #000000">Please do not Edit Employee Id</marquee>
		
		<h3 class="text-center " style="margin-top: 10px; padding:10px; text-shadow: 3px 6px 5px #000000">Edit Employee Details</h3>
		<form action="UpdateServlet" method="post">
			<table class="table">

				<tr>
					<td>Employee Id :</td>
					<td>
					<input  class="form-control" name="id" value="${emobj.id}"></td>
				</tr>
				<tr>
					<td>Employee Name :</td>
					<td><input type="text" class="form-control" name="name"
						value="${emobj.name}"></td>
				</tr>
				<tr>
					<td>Employee Salary :</td>
					<td><input type="text" class="form-control" name="salary"
						value="${emobj.salary}"></td>
				</tr>
				<tr>
					<td>Employee City :</td>
					<td><input type="text" class="form-control" name="city"
						value="${emobj.city}"></td>
				</tr>
				<tr>
					<td>Employee Contact-Number :</td>
					<td><input type="text" class="form-control" name="contact_no"
						value="${emobj.contact_no}"></td>
				</tr>


			</table>


			<button type="submit" class="btn btn-secondary"
				style="margin-left: 35%; margin-bottom: 15px;">Update</button>
			<a href="DisplayServlet.do" class="btn btn-secondary" style="margin-bottom: 15px;">Back</a>
		</form>
	</div>

</body>
</html>