<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" href="../css/signup.css">
    <link href='https://fonts.googleapis.com/css?family=Nova Square' rel='stylesheet'>
</head>

<body>

    <form action="/admin/signup" method="post">
        <div class="container">
            <h1>ADMIN REGISTER</h1>
            <div class="form-group">
                <label for="firstName">First Name</label>
                <input type="text" placeholder="Enter First Name" name="firstName" required>
            </div>
            <div class="form-group">
                <label for="lastName">Last Name</label>
                <input type="text" placeholder="Enter Last Name" name="lastName" required>
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="text" placeholder="Enter Email" name="email" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" placeholder="Enter Password" name="password" required>
            </div>
            <div class="form-group">
                <label for="confirm-password">Confirm Password</label>
                <input type="password" placeholder="Confirm Password" name="confirm-password" required>
            </div>
            <div class="form-group remember-me">
                <input type="checkbox" checked="checked" name="remember">
                <label>Remember me</label>
            </div>
            <div class="button-group">
                <button type="submit">Register</button>
                <div class="cancel">
                    <button type="button" class="cancelbtn"><a href="/jsp/index.jsp">BACK</a></button>
                </div>
            </div>
            <div class="psw">have account?<a href="/jsp/AdminLogin.jsp" style="color: rgb(47, 212, 21);">  Login</a></div>
        </div>
    </form>
</body>

</html>