<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<title>CMS | Admin Dashboard</title>
<link rel="stylesheet" type="text/css" href="../css/Admin_Dashboard.css">
<link href='https://fonts.googleapis.com/css?family=Alef'
	rel='stylesheet'>
<script src="https://kit.fontawesome.com/2f4be6bad1.js"
	crossorigin="anonymous"></script>
<style>
body {
    margin: 0;
    padding: 0;
    font-family: 'Alef';
    background-color: #000000a3;
    background-image: url("../images/background.png");
    background-size: cover;
}

.navbar {
    height: 40px;
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 0.9rem;
    background-color: #bfbfbf;
    color: black;
}

.logo {
    display: flex;
    align-items: center;
}

.logo img {
    width: 50px;
    height: 50px;
    margin-right: 1rem;
}

.logo h1 {
    font-size: 1.5rem;
}

.nav-links {
    list-style: none;
    display: flex;
    margin: 0;
    padding: 0;
    justify-items: end;
}

.nav-links li {
    margin-right: 10px;
}

.nav-links a {
    text-decoration: none;
    color: black;
    font-weight: bold;
    padding: 25px;
    transition: background-color 0.3s ease;
}

.nav-links a:hover {
    background-color: #555;
    border-radius: 10px;
    color: #fff;
}

.nav-links a:active {
    background-color: #777;
}

.dashboard {
    display: flex;
    justify-content: space-around;
    margin-top: 50px;
}

.form {
    height: 200px;
    width: 200px;
    border: 1px solid #333;
    background-color: #fff;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    border-radius: 5px;
    margin-bottom: 20px;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    text-align: center;
    transition: all 0.3s ease;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    transition: all 0.3s ease;
}

.form:hover {
    transform: scale(1.05);
    box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
}

.form i {
    font-size: 48px;
    margin-bottom: 10px;
    color: #333;
}

.form i:hover {
    color: #555;
}

.form h2 {
    font-size: 1.5rem;
    margin-top: 0;
    color: #333;
    text-align: center;
}

.form a {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    text-decoration: none;
    color: #333;
    transition: color 0.3s ease;
    margin-top: 1rem;
}

.form a:hover {
    color: #555;
}

a {
    text-decoration: none;
}

.form label {
    display: block;
    margin-bottom: 10px;
}

.form input[type="text"],
.form textarea {
    width: 100%;
    padding: 8px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    resize: vertical;
}

.form button {
    background-color: #333;
    color: #fff;
    border: none;
    padding: 10px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    border-radius: 4px;
    cursor: pointer;
}

.form button:hover {
    background-color: #555;
}
</style>
</head>

<body>
${pass}
${fail}
	<nav class="navbar">
		<div class="logo">
			<img src="../images/logo.png" alt="Coaching Management System Logo">
			<h1>Coaching Management System</h1>
		</div>
		<ul class="nav-links">
			<li><a href="/jsp/index.jsp">HOME</a></li>
			<li><a href="/jsp/AdminDashboard.jsp">DASHBOARD</a></li>
			<li><a href="/admin/viewcourse">VIEW COURSES</a></li>
			<li><a href="/logout">LOGOUT</a></li>
			<li><a href=""></a></li>
		</ul>
	</nav>

	<div class="dashboard">
		<div class="form">
			<a href="/jsp/InsertCourse.jsp"> <i class="fas fa-square-plus fa-3x"></i>
				<h2>Insert Course Form</h2>
			</a>
		</div>
		<div class="form">
			<a href="/jsp/UpdateCourse.jsp"> <i class="fas fa-pencil-alt fa-3x"></i>
				<h2>Update Course Form</h2>
			</a>
		</div>
		<div class="form">
			<a href="/jsp/DeleteCourse.jsp"> <i class="fas fa-trash-alt fa-3x"></i>
				<h2>Delete Course Form</h2>
			</a>
		</div>
	</div>
</body>

</html>