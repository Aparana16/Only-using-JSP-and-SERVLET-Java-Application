<%@page import="com.adj.emgm.Employee"%>
<%@page import="java.util.List"%>
<%@page import="com.adj.emgm.EmployeInMemoryStore"%>
<%@page import="com.adj.emgm.EmployeStore"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" >
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" ></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<title>SortByName</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-secondary">
		<ul class="navbar-nav m-auto ">
			<li class="nav-item"><a class="nav-link " href="index.jsp">Home</a></li>
			<li class="nav-item "><a class="nav-link "
				href="addemployee.jsp">AddEmployee</a></li>
			<li class="nav-item a"><a class="nav-link "
				href="DisplayServlet">DisplayEmployee</a></li>
			<li class="nav-item"><a class="nav-link " href="searchByid.jsp">SearchEmployeeId</a>
			</li>
			<li class="nav-item"><a class="nav-link " href="SearchName.jsp">SearchDetailsByName</a></li>
			<li class="nav-item dropdown active"><a
				class="nav-link dropdown-toggle" href="#" id="navbardrop"
				data-toggle="dropdown">SortedBy</a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="SortByName.jsp">SortByName</a> <a
						class="dropdown-item" href="SortBySalaryServlet">SortBySalary</a>

				</div>
		</ul>
	</nav>
<%
EmployeStore employeeStore = new EmployeInMemoryStore();
List<Employee> emList = employeeStore.getEmployeListByName();
for (int i = 0; i < emList.size(); i++) {
	Employee emobj = emList.get(i);
	out.println("**************************************");
	out.println("<br>");
	out.println("Employee Id :" + emobj.getId());
	out.println("<br>");
	out.println("Employee Name :" + emobj.getName());
	out.println("<br>");
	out.println("Employee City :" + emobj.getCity());
	out.println("<br>");
	out.println("Employee Salary :" + emobj.getSalary());
	out.println("<br>");
	out.println("Employee ContactNumber :" + emobj.getContact_no());
	out.println("<br");
	out.println("**************************************");
	out.println("<br>");
}
%>

</body>
</html>