<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Coaching Management System</title>
<link rel="stylesheet" href="../css/style.css">
<link href='https://fonts.googleapis.com/css?family=Alef'
	rel='stylesheet'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
	integrity="sha512-..." crossorigin="anonymous">
<link rel="icon" type="image/png"
	href="https://cdn-icons-png.flaticon.com/512/1613/1613056.png">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<script src="https://kit.fontawesome.com/2f4be6bad1.js"
	crossorigin="anonymous"></script>
</head>

<body>
	<div id="nav_bar">
		<div class="cart"></div>
		<div class="admin1">
			<i class="fas fa-user-shield"></i> <a href="/jsp/AdminLogin.jsp"
				class="admin" style="text-decoration: none;">ADMIN</a>
		</div>
	</div>
	${pass} ${fail}
	<nav class="navbar">
		<div class="logo">
			<img src="../images/logo.png" alt="Coaching Management System Logo">
			<h1>Coaching Management System</h1>
		</div>
		<ul class="nav-links">
			<li><a href="/jsp/index.jsp">HOME</a></li>
			<li><a href="/jsp/aboutus.jsp">ABOUT</a></li>
			<li><a href="/student/viewcourse">COURSES</a></li>
			<%
			if (session.getAttribute("student") == null) {
			%>
			<li><a href="/jsp/StudentLogin.jsp">LOGIN</a></li>
			<li><a href="/jsp/StudentSignup.jsp">SIGNUP</a></li>
			<%
			} else {
			%>
			<li><a href="/jsp/StudentCourse.jsp">ENROLLED COURSES</a></li>
			<li><a href="/logout">LOGOUT</a></li>
			<%
			}
			%>
			<li><a href=""></a></li>
		</ul>
	</nav>

	<section class="hero">
		<div class="hero-content">
			<h2>Welcome to Coaching Management System</h2>
			<p>Discover the best coaching courses for your academic and
				professional growth.</p>
			<a href="courses.html" class="btn">Explore Courses</a>
		</div>
	</section>

	<section class="feature-section">
		<div class="container">
			<h2 class="section-title">Key Features</h2>
			<div class="features">
				<div class="feature">
					<i class="fas fa-users"></i>
					<h3 class="feature-title">User Management</h3>
					<p class="feature-description">Efficiently manage users,
						including students, instructors, and administrators.</p>
				</div>
				<div class="feature">
					<i class="fas fa-calendar-alt"></i>
					<h3 class="feature-title">Scheduling</h3>
					<p class="feature-description">Create and manage class
						schedules, appointments, and events.</p>
				</div>
				<div class="feature">
					<i class="fas fa-file-alt"></i>
					<h3 class="feature-title">Course Materials</h3>
					<p class="feature-description">Upload and organize course
						materials, including documents and multimedia files.</p>
				</div>
			</div>
		</div>
	</section>

	<footer>
		<div class="container">
			<div class="footer-item">
				<div class="logo">
					<img src="../images/logo.png" alt="Coaching Management System Logo">
					<h1>Coaching Management System</h1>
				</div>
				<p class="footer-description">Discover the best coaching courses
					for your academic and professional growth.</p>
				<p class="footer-rights">&copy; CMS 2023| All rights reserved</p>
			</div>
			<div class="footer-item">
				<h2 class="footer-heading">Opening Times</h2>
				<p class="footer-info">Monday-Friday: 10.00-23.00</p>
				<p class="footer-info">Saturday: 10.00-19.00</p>
				<div class="footer-social-icons">
					<a href="#" class="footer-icon"><i class="fab fa-facebook-f"></i></a>
					<a href="#" class="footer-icon"><i class="fab fa-linkedin-in"></i></a>
					<a href="#" class="footer-icon"><i class="fab fa-twitter"></i></a>
					<a href="#" class="footer-icon"><i class="fab fa-whatsapp"></i></a>
				</div>
			</div>
			<div class="footer-item">
				<h2 class="footer-heading">Contact Us</h2>
				<p class="footer-info">Phone: 9244216548</p>
				<p class="footer-info">Email: hello@colorbil.com</p>
				<p class="footer-info">Address: P.O.Box 283 8562 Fusce Rd, NY</p>
			</div>
		</div>
		<p class="footer-rights">&copy; CMS 2023 | All rights reserved</p>
	</footer>

	<script
		src="https://unpkg.com/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>