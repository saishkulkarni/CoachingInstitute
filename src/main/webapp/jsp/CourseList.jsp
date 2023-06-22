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
	List<Course> list = (List<Course>) request.getAttribute("list");
	%>
	<nav class="navbar">
		<div class="logo">
			<img src="../images/logo.png" alt="Coaching Management System Logo">
			<h1>Coaching Management System</h1>
		</div>
		<ul class="nav-links">
			<li><a href="/jsp/index.jsp">HOME</a></li>
			<li><a href="/jsp/AdminDashboard.jsp">DASHBOARD</a></li>
			<li><a href="/admin/viewcourse">VIEW COURSES</a></li>
			<li><a href=""></a></li>
		</ul>
	</nav>
	<div class="border">
		<table class="table">
			<thead>
				<tr class="heading">
					<th scope="col">ID</th>
					<th scope="col">Course Name</th>
					<th scope="col">Subject</th>
					<th scope="col">Course Description</th>
					<th scope="col">Image</th>
					<th scope="col" colspan="2">Price</th>
				</tr>
			</thead>
			<tbody>
				<%
				for (Course course : list) {
				%>
				<tr>
					<th scope="row"><%=course.getId()%></th>
					<td><%=course.getCourseName()%></td>
					<td><%=course.getSubject()%></td>
					<td><%=course.getDescription()%></td>
					<td>
						<%
						String base64 = Base64.encodeBase64String(course.getImage());
						%> <img height="150px" width="150px" alt="unknown"
						src="data:image/jpeg;base64,<%=base64%>">
					</td>
					<td><%=course.getPrice()%></td>
				</tr>
				<%
				}
				%>

			</tbody>
		</table>
		<a href="/jsp/AdminDashboard.jsp"><button>BACK</button></a>
	</div>
</body>

</html>