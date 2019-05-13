<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.zubiri.matches.*"%>
<%@ page import="servletExample.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find</title>
</head>
<body>
	<form method="get" action="showServlet">
		<input type="text" name="selected">
		<input type="submit">
	</form>
	<table>
		<tr><th colspan=2>${team.name}</th></tr>
		<tr><th>Won Leagues:</th><td>${team.wonLeagues }</td></tr>
		<tr><th>Shirt Color:</th><td>${team.shirtColor }</td></tr>
		<tr><th>Stadium:</th><td>${team.stadium }</td></tr>
	</table>
</body>
</html>