
<%@page import="com.adj.emgm.Employee"%>
<%@page import="java.util.List"%>
<%@page import="com.adj.emgm.EmployeInMemoryStore"%>
<%@page import="com.adj.emgm.EmployeStore"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<title>SortBySalary</title>
</head>
<body>
	
	<nav class="navbar navbar-expand-sm navbar-dark bg-secondary  Nav">
	<h3>
			<span style="color: white">E</span>mployee<span style="color: white">M</span>anagement
		</h3>
		<ul class="navbar-nav m-auto mb-2 mb-lg-0 ">
			<li class="nav-item active"><a class="nav-link"	href="index.jsp">Home</a></li>
			<li class="nav-item"><a class="nav-link " href="addemployee.jsp">AddEmployee</a></li>
			<li class="nav-item"><a class="nav-link " href="DisplayServlet">DisplayEmployee</a></li>
			<li class="nav-item"><a class="nav-link " href="searchByid.jsp">SearchDetailsById</a></li>
			<li class="nav-item"><a class="nav-link " href="SearchName.jsp">SearchDetailsByName</a></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="" id="navbardrop"
				data-toggle="dropdown">SortedBy</a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="SortByName.jsp">SortByName</a> <a
						class="dropdown-item" href="SortBySalaryServlet">SortBySalary</a>

				</div>
			</li>

		</ul>

	</nav>
	<h3 style="margin-top:50px; text-align: center;">----------Sorted Salary--------------</h3>
	<table class="table">
		<thead class="thead-dark">
			<tr>
				<th scope="col">Employee Id</th>
				<th scope="col">Employee Name</th>
				<th scope="col">Employee City</th>
				<th scope="col">Employee Salary</th>
				<th scope="col">Employee Contact-Number</th>
				
			</tr>
		</thead>
		<tbody>
	<%
		//EmployeStore employeeStore = new EmployeInMemoryStore();
	//List<Employee> emList = (List<Employee>)request.getAttribute("List");
	//System.out.println(emList);
	//for (Employee emobj :emList){%>
	<c:set var="emList" value='${requestScope["List"]}' />
			<c:forEach items="${emList}" var="emobj">  
		<tr>
		  <td><c:out value="${emobj.id}" ></c:out></td> 
		    <td><c:out value="${emobj.name}" ></c:out></td> 
		      <td><c:out value="${emobj.city}" ></c:out></td> 
		        <td><c:out value="${emobj.salary}" ></c:out></td> 
		          <td><c:out value="${emobj.contact_no}" ></c:out></td> 
		            
		</tr>
	
	</c:forEach>
		</tbody>
		</table>

</body>
</html>