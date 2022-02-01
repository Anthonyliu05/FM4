<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Voti</title>
</head>
<body>
<% int[] voti_tot=(int[])session.getAttribute("voti");
	String[] nomi=(String[])session.getAttribute("nomi");
%>
<table>
	<tr>
		<td><h3>Nomi:</h3></td>
		<td><h3>Voti:</h3></td>
	</tr>
	<tr>
		<td><%=nomi[0] %></td>
		<td><%=voti_tot[0] %></td>
	</tr>
	<tr>
		<td><%=nomi[1] %></td>
		<td><%=voti_tot[1] %></td>
	</tr>
	<tr>
		<td><%=nomi[2] %></td>
		<td><%=voti_tot[2] %></td>
	</tr>
	<tr>
		<td><%=nomi[3] %></td>
		<td><%=voti_tot[3] %></td>
	</tr>
	<tr>
		<td><%=nomi[4] %></td>
		<td><%=voti_tot[4] %></td>
	</tr>
	<tr>
		<td><%=nomi[5] %></td>
		<td><%=voti_tot[5] %></td>
	</tr>
</table>
</body>
</html>