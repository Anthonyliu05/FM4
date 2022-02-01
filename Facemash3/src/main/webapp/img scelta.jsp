<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>img scelta</title>
</head>
<body>
<%String nome=request.getParameter("name");
   String img=request.getParameter("img");
   int[] vett3=(int[])session.getAttribute("voti");
   int posizione=Integer.valueOf(request.getParameter("posizione")).intValue();
   vett3[posizione]+=1;
   session.setAttribute("voti", vett3);
   session.setAttribute("token","true");
   
%>
<h1>Nome:<%=nome %> </h1>
<img src="img/<%=img %>.jpg" width=300px height=300px/><br>
<a href="primo.jsp">Torna alla Pagina Iniziale</a>
</body>
</html>