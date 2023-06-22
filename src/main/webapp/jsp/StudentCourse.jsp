<%@page import="org.jsp.coaching.dto.Student"%>
<%@page import="org.apache.commons.codec.binary.Base64"%>
<%@page import="org.jsp.coaching.dto.Course"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Cart | CMS</title>
<link rel="stylesheet" href="../css/cart.css">
</head>

<body>
	<%
	Student student = (Student) session.getAttribute("student");
	if (student.getCourseOpted() == null || student.getCourseOpted().isEmpty()) {
		response.getWriter().print("<h1>Not enrolled for any course</h1>");
		request.getRequestDispatcher("/jsp/index.jsp").include(request, response);
	} else {
	%>
	<nav class="navbar">
		<div class="logo">
			<img src="../images/logo.png" alt="Coaching Management System Logo">
			<h1>Coaching Management System</h1>
		</div>
		<ul class="nav-links">
			<li><a href="/jsp/index.jsp">HOME</a></li>
			<li><a href=""></a></li>
		</ul>
	</nav>
	<div class="border">
		<table class="table">
			<thead>
				<tr class="heading">
					<th scope="col">Student Name</th>
					<th scope="col">Course Name</th>
				</tr>
			</thead>
			<tbody>
				<%
				for (String course : student.getCourseOpted()) {
				%>
				<tr>
					<th scope="row"><%=student.getFirstName()%> <%=student.getLastName()%></th>
					<td><%=course%></td>
				</tr>
				<%
				}
				%>

			</tbody>
		</table>
		<a href="/jsp/index.jsp"><button>BACK</button></a>
	</div>
	<%
	}
	%>
</body>

</html>