
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>


<title>ViewEmployeeList</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-secondary">
		<h3>
			<span style="color: white">E</span>mployee<span style="color: white">M</span>anagement
		</h3>
		<ul class="navbar-nav m-auto ">
			<li class="nav-item"><a class="nav-link " href="index.jsp">Home</a></li>
			<li class="nav-item "><a class="nav-link "
				href="addemployee.jsp">AddEmployee</a></li>
			<li class="nav-item active"><a class="nav-link "
				href="DisplayServlet">DisplayEmployee</a></li>
			<li class="nav-item"><a class="nav-link " href="searchByid.jsp">SearchEmployeeId</a>
			</li>
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
	<h2
		style="text-align: center; color: grey; text-shadow: 2px 2px 4px #000000; margin-top: 20px;">Employee's
		Detail</h2>
	<hr>

	<table class="table">
		<thead class="thead-dark">
			<tr>
				<th scope="col">Employee Id</th>
				<th scope="col">Employee Name</th>
				<th scope="col">Employee City</th>
				<th scope="col">Employee Salary</th>
				<th scope="col">Employee Contact-Number</th>
				<th scope="col">Employee Delete</th>
			</tr>
		</thead>
		<tbody>
			<c:set var="empList" value='${requestScope["employeelist"]}' />
			<c:forEach items="${empList}" var="emobj">  
			<tr>
				<td>${emobj.id}</td>
				<td><a href='UpdateServlet?empId=${emobj.id}'><c:out value="${emobj.name}" ></c:out></a></td>
				<td><c:out value="${emobj.city}" ></c:out></td>
				<td><c:out value="${emobj.salary}" ></c:out></td>
				<td><c:out value="${emobj.contact_no}" ></c:out></td>
				<td>
					<button class="fa fa-close " data-toggle="modal"
						style="transition: all .08s linear; outline: medium none; -moz-outline-style: none; border: 0px; box-shadow: 0 0 0 1px #ebebeb inset, 0 0 0 2px rgba(255, 255, 255, 0.15) inset, 0 8px 0 0 #adadad, 0 8px 0 1px rgba(0, 0, 0, 0.4), 0 8px 8px 1px rgba(0, 0, 0, 0.5);"
						data-target="#data" onclick=" showModal(${emobj.id})"></button>


				</td>
			</tr>
			
			</c:forEach>
		</tbody>
	</table>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"></script>

	<div class="modal fade" id="data">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Delete Employee
						details</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">Are You Sure delete this details</div>
				<form action="DeleteServletId" method="get" id="delete-data">
					Id:<input class="form-contro" name="id">
					<div class="modal-footer">
						<button type="submit" class="btn btn-secondary">Yes</button>
						<button type="button" class="btn btn-dark" data-dismiss="modal">No</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<!-- JavaScript -->
	<script>
		function showModal(empId){
			
			document.getElementById("delete-data").id.value=empId;
			$("#data").modal("show");

			}
		/*function showModal1(self){
			var id=self.getAttribute("data-id");
			document.getElementById("delete-data").id.value=id;
			$("#data").modal("show");

			}*/
	</script>




</body>
</html>