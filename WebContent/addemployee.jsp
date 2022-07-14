<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="Css/addEmployee.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<title>AddEmployee</title>


</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-secondary">
		<h3>
			<span style="color: white">E</span>mployee<span style="color: white">M</span>anagement
		</h3>
		<ul class="navbar-nav m-auto ">
			<li class="nav-item"><a class="nav-link " href="index.jsp">Home</a></li>
			<li class="nav-item active"><a class="nav-link "
				href="addemployee.jsp">AddEmployee<span class="sr-only">(Current)</span></a>
			</li>
			<li class="nav-item"><a class="nav-link " href="DisplayServlet">DisplayEmployee</a>
			</li>
			<li class="nav-item"><a class="nav-link " href="searchByid.jsp">SearchId</a>
			</li>
			<li class="nav-item"><a class="nav-link " href="SearchName.jsp">SearchDetailsByName</a></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="" id="navbardrop"
				data-toggle="dropdown">SortedBy</a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="SortByName.jsp">SortByName</a> <a
						class="dropdown-item" href="SortBySalaryServlet.do">SortBySalary</a>

				</div></li>

		</ul>
	</nav>
	<div class="container bg-light formDiv" >
		<h3 class="text-center display-6 zoom">Add
			Employee Details</h3>
		<hr>
		<form action="EmployeeServlet" method="post">
			<div class="form-group row">
				<label for="firstName" class="col-sm-2 col-form-label">EmployeeName
					:</label>
				<div class="col-sm-7">
					<input type="text" class="form-control" name="firstName"
						placeholder="Enter Employee name" required>
				</div>
			</div>
			<!-- <div class="form-group row">
				<label for="lastName" class="col-sm-2 col-form-label">LastName :</label>
				<div class="col-sm-7">
					<input type="text" class="form-control" name="lastName"
						placeholder="Enter last name" required>
				</div>
			</div>
			<div class="form-group row">
				<label for="adrs" class="col-sm-2 col-form-label">Address :</label>
				<div class="col-sm-7">
					<input type="text" class="form-control" name="address"
						placeholder="Enter Address" required>
				</div>
			</div>-->
			<div class="form-group row">
				<label for="salary" class="col-sm-2 col-form-label">EmployeeSalary
					:</label>
				<div class="col-sm-7">
					<input type="text" class="form-control" name="salary"
						placeholder="Enter Salary" required>
				</div>
			</div>
			<div class="form-group row">
				<label for="cty" class="col-sm-2 col-form-label">EmployeeCity:</label>
				<div class="col-sm-7">
					<select class="form-control" name="city">
						<option>Select city</option>
						<option>Noida</option>
						<option>Delhi</option>
						<option>GreaterNoida</option>

						<option>Mumbai</option>
					</select>
				</div>
			</div>
			<!--<div class="form-group row">
				<label for="gndr" class="col-sm-2 col-form-label">Gender :</label> 
				<div class="col-sm-7">
				<label for="male">Male <input type="radio" 
					name="gender"> <span class="checkmark"></span>
				</label> <label for="female">Female <input type="radio"
					 name="gender"> <span class="checkmark"></span>
				</label>
			</div>
			</div>-->
			<div class="form-group row">
				<label for="contact" class="col-sm-2 col-form-label">ContactNumber
					:</label>
				<div class="col-sm-7">
					<input type="text" class="form-control" name="contactno"
						placeholder="Enter Contact Number" required>
				</div>
			</div>
			<div class="form-group form-check">
				<label class="form-check-label"> <input
					class="form-check-input zoom" type="checkbox" value="checked"
					name="remember" required> Remember me
				</label>
			</div>
			<!--  <a href="#" class="btn btn-secondary">Submit</a>-->
			<button type="submit" class="btn btn-secondary  "
				style="margin-left: 35%; margin-bottom: 20px; border-radius: 30px; box-shadow: activeborder;">Add Employee</button>
			<!--  <button type="submit" class="btn btn-secondary"style="margin-left: 35%;">AddEmployee</button>-->
			<button type="reset" class="btn btn-secondary"style="margin-bottom: 20px; border-radius: 30px;"
				>Reset</button>
		</form>

	</div>

</body>
</html>