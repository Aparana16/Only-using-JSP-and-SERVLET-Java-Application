<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!--  <link href="Css/index.css" rel="stylesheet">-->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>


<title>Home</title>
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

	<div id="slide" class="carousel slide" data-ride="carousel">
		<ul class="carousel-indicators">
			<li data-target="#slide" data-slide-to="0" class="active"></li>
			<li data-target="#slide" data-slide-to="1"></li>

		</ul>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="img1.jpg" alt="Los Angeles" width="1520" height="550"
					style="opacity: 0.5;">
				<div class="carousel-caption zoom"
					style="text-align: center; margin-bottom: 200px; color: #000; font-size: 30px;">
					<h3>Welcome</h3>
					<p>Employee Management</p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="4.jpg" alt="Chicago" width="1520" height="550">
				<div class="carousel-caption zoom"
					style="text-align: center; color: #000; font-size: 40px;">
					<h3>Welcome</h3>
					<p>Employee Management Web Application</p>
				</div>
			</div>

		</div>
	</div>
	<footer class=" bg-light">
		<div class="footer-copyright text-center py-3">© 2022 Copyright:
			Employee Management</div>



	</footer>

</body>
</html>