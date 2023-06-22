<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Coaching Management System - Insert Course Details</title>
<link rel="stylesheet" href="../css/insert.css">
</head>

<body>
	<nav class="navbar">
		<div class="logo">
			<img src="../images/logo.png" alt="Coaching Management System Logo">
			<h1>Coaching Management System</h1>
		</div>
		<ul class="nav-links">
			<li><a href="/jsp/index.jsp">HOME</a></li>
			<li><a href="/jsp/AdminDashboard.jsp">DASHBOARD</a></li>
			<li><a href=""></a></li>
		</ul>
	</nav>
	<div class="details">
		<h1>Insert Course Details</h1>
	</div>
	<div class="main">
		<form action="/admin/course/delete" class="form" method="post">
			<div class="Group">
				<label for="id">Course ID</label> <input placeholder="" id="id"
					name="id" type="text">
			</div>
			<div class="Group">
				<button class="btn">Delete</button>
			</div>
		</form>
	</div>
</body>

</html>