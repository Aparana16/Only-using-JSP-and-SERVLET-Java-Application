
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!--  <link rel="stylesheet" href="Sid.css">-->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" >
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" ></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

<title>SearchById</title>

</head>

<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-secondary">
<h3><span style="color: white">E</span>mployee<span style="color: white">M</span>anagement</h3>
  <ul class="navbar-nav m-auto ">
    <li class="nav-item ">
      <a class="nav-link  " href="index.jsp">Home<span class="sr-only">(Current)</span></a>
    </li>
    <li class="nav-item">
      <a class="nav-link " href="addemployee.jsp">AddEmployee</a>
    </li>
    <li class="nav-item">
      <a class="nav-link " href="DisplayServlet">DisplayEmployee</a>
    </li>
    <li class="nav-item active">
      <a class="nav-link " href="Searchid.java">SearchDetailsById</a>
    </li>
     <li class="nav-item">
      <a class="nav-link " href="SearchName.jsp">SearchDetailsByName</a>
    </li>
     <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="" id="navbardrop" data-toggle="dropdown">SortedBy</a>
       <div class="dropdown-menu">
        <a class="dropdown-item" href="SortByName.jsp">SortByName</a>
        <a class="dropdown-item" href="SortBySalaryServlet">SortBySalary</a>
       
      </div>      
      </li>
   
  </ul>
</nav>


<!-- Search form -->
<div class="form-inline active-cyan col-sm-7" style="margin: 100px 350px; " >
<form action="SearchServletId" method="post">
<input  name="searchId" style="width:400px;"class="form-control" type="text" placeholder="Search here with Employee Id" aria-label="Search" >
<button name="searchId" class="btn btn-secondary fa fa-search" >SearchEmpoyee</button>
</form>
</div>

<c:set var="emp" value='${requestScope["emp"]}' />
<c:if test="${emp != null}"></c:if>
<h3 style="margin-top:50px; text-align: center;">----------Search Employee Detail By Id--------------</h3>
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
		
		<tr>
		<td><c:out value="${emp.id}" ></c:out></td>
		<td><c:out value="${emp.name}" ></c:out></td>
		<td><c:out value="${emp.city}" ></c:out></td>
		<td><c:out value="${emp.salary}" ></c:out></td>
		<td><c:out value="${emp.contact_no}" ></c:out></td>
		</tr>
		
		</tbody>
		</table>
 



</body>
</html>