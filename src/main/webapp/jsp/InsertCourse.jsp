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
		<form action="/admin/course" class="form" method="post" enctype="multipart/form-data">
			<div class="Group">
				<label for="id">Course Name</label> <input placeholder="" id="id"
					name="courseName" type="text">
			</div>
			<div class="Group">
                <label for="Email">Subject</label>
                <input name="subject" placeholder="" id="Email" type="text">
            </div>
            
            <div class="Group">
				<label for="id">Course Description</label> <input placeholder="" id="id"
					name="description" type="text">
			</div>
			<div class="Group">
				<label for="id">Course Image</label> <input placeholder="" id="id"
					name="pic" type="file">
			</div>
            <!-- 
            <div class="Group">
                <label for="Password">Form Name</label>
                <input id="Password" type="text">
            </div> -->
			<div class="Group">
				<label for="Price">Price</label> <input name="price" id="Price" type="number">
			</div>
			<div class="Group">
				<button class="btn">Submit</button>
			</div>
		</form>
	</div>
</body>

</html>