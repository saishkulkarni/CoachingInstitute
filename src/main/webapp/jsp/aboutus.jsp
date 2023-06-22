<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Coaching Management System</title>
    <link rel="stylesheet" href="../css/style.css">
    <link href='https://fonts.googleapis.com/css?family=Alef' rel='stylesheet'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha512-..." crossorigin="anonymous">
</head>

<body>
    <nav class="navbar">
        <div class="logo">
            <img src="../images/logo.png" alt="Coaching Management System Logo">
            <h1>Coaching Management System</h1>
        </div>
        <ul class="nav-links">
            <li><a href="/jsp/index.jsp">HOME</a></li>
            <li><a href="/jsp/aboutus.jsp">ABOUT</a></li>
            <li><a href="courses.html">COURSES</a></li>
            <%if(session.getAttribute("student")==null){ %>
            <li><a href="/jsp/StudentLogin.jsp">LOGIN</a></li>
            <li><a href="/jsp/StudentSignup.jsp">SIGNUP</a></li>
            <%}else{ %>
            <li><a href="/logout">LOGOUT</a></li>
           <%} %>
        </ul>
    </nav>

    <section class="about-section">
        <div class="container-about">
            <h2>About Us</h2>
            <p>Coaching Management System is a comprehensive platform dedicated to providing high-quality coaching courses for students and professionals. Our goal is to empower individuals with the knowledge and skills they need to succeed in their academic
                and professional endeavors.</p>
            <p>With a team of experienced instructors and a wide range of courses, we aim to create a supportive and interactive learning environment. Whether you're looking to enhance your academic performance, prepare for competitive exams, or acquire
                new skills, our platform has something for everyone.</p>
            <p>Key Features:</p>
            <ul>
                <li>User Management: Efficiently manage users, including students, instructors, and administrators.</li>
                <li>Scheduling: Create and manage class schedules, appointments, and events.</li>
                <li>Course Materials: Upload and organize course materials, including documents and multimedia files.</li>
            </ul>
        </div>
    </section>
    

    <footer>
        <div class="container">
            <div class="footer-item">
                <div class="logo">
                    <img src="logo.png" alt="Coaching Management System Logo">
                    <h1>Coaching Management System</h1>
                </div>
                <p class="footer-description">Discover the best coaching courses for your academic and professional growth.</p>
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
</body>

</html>