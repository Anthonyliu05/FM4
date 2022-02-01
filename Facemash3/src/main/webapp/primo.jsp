<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Random" %>

<!DOCTYPE html>
<html>
<head>
<style>
.div1{background-color:rgb(139,4,4);height: 180px; text-align: center; justify-content: center;display: flex;flex-direction: column;}
.h1prim{color: rgba(254,252,252,255); font-size:100px;font-type:calibri;margin-top:40px;font-family:calibri;}
.h1sec{text-align:center;font-family:calibri;}
body{margin: 0;padding: 0;}
img {width: 175px;height: 250px;border: 2px solid #aaa;}
.main table {
	margin: 0 auto;
}
</style>
<meta charset="ISO-8859-1">
<title>facesmash</title>
</head>
<body>
<div class="main">
	  <div class="div1">
            <h1 class="h1prim">FACESMASH</h1>
      </div>
      <h1 class="h1sec">Who's Hotter? Click to Choose</h1>
      
      <% String vett[]= new String[6];
		int a,b;%>
<%
   Random rand=new Random();

   vett[0]="andrew garfield";
   vett[1]="emma stone";
   vett[2]="kristine dunst";
   vett[3]="tobey maguire";
   vett[4]="tom holland";
   vett[5]="zendaya";

	session.setAttribute("nomi", vett);   
	a=rand.nextInt(vett.length);
	b=rand.nextInt(vett.length);
	while(a==b){
	b=rand.nextInt(vett.length); 
	}  
	String token=(String)session.getAttribute("token");

	if(token!="true"){
		int[] vett2= new int[]{0,0,0,0,0,0};
		session.setAttribute("voti", vett2);
	}
	%>

   <table>
    <tr>
      <td><a href="img scelta.jsp?name=<%=vett[a]%>&img=<%=vett[a]%>&posizione=<%=a%>"><img src="img/<%= vett[a]%>.jpg" width="300" height="250"></a></td>
      <td><b>Or</b></td>
      <td><a href="img scelta.jsp?name=<%=vett[b]%>&img=<%=vett[b]%>&posizione=<%=b%>"><img src="img/<%= vett[b]%>.jpg" width="300" height="250"></a></td>
    </tr>
   </table>
   <a href="voti_tot.jsp">Voti inseriti</a>
	</div>
	<p>Anthony Liuzzi 4^A INF</p>
</body>
</html>