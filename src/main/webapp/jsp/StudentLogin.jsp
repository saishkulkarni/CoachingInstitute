<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" href="../css/login.css">
    <link href='https://fonts.googleapis.com/css?family=Nova Square' rel='stylesheet'>
</head>

<body>
${fail}
${pass}
    <form action="/student/login" method="post">

        <div class="container">
            <h1>Login</h1>

            <label for="email"><b>Email</b></label>
            <input type="text" placeholder="Enter Email" name="email" required>

            <label for="password"><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="password" required>

            <div class="remember-me">
                <input type="checkbox" checked="checked" name="remember">
                <label>Remember me</label>
            </div>

            <button type="submit">Login</button>
            <div class="cancel">
                <button type="button" class="cancelbtn"><a href="/jsp/index.jsp">BACK</a></button>
            </div>
            <div class="psw">Dont have account?<a href="/jsp/StudentSignup.jsp" style="color: rgb(49, 182, 20)"> Register</a></div>
        </div>
    </form>
</body>

</html>