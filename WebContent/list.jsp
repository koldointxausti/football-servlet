<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.zubiri.matches.*"%>
<%@ page import="servletExample.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List</title>
</head>
<body>
	<ul>
		<li><a href="listServlet?selected=Team">Team</a></li>
		<li><a href="listServlet?selected=Player">Player</a></li>
		<li><a href="listServlet?selected=Match">Match</a></li>
	</ul>
	<c:forEach items="${teams}">
	   <p>${name}<p>
	</c:forEach>
</body>
</html>