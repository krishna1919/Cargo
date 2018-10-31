<%@ page language="java" import="java.sql.*"%>
<html>
<head>
<title>first form</title>
</head>
<form method=post  action="CARGOHOME.jsp">
<body bgcolor="sky blue">
<h1><center>VENDOR</center></h1>
<table>
 <% String a=(String)session.getAttribute("uid");%>
<tr><td>WELCOME:
<%=a%></td></tr>
</table><br>
<A href="login.jsp" align="right"><h5>BACK</h5></A>
<img src="DY004870[1].jpg" align="right">
<table>

<!--<pre><input type="submit" value=LOGOUT>  -->
                        <a href="logout1.jsp">LOGOUT:</a><br>

                        <a href="CARGOHOME.jsp">HOME</a><br>

                        <a href="abtvendor.jsp">ABOUT VENDOR</a><br>

                        <a href="inbox1.jsp">INBOX</a><br>

                        <a href="compose.jsp">COMPOSE</a><br>

                        <a href="senditems1.jsp">SEND ITEMS</a>

                     <br>   <a href="rawmaterial.jsp">RAW MATERIAL DETAILS</a>
		 </pre>
</table>
</form>
</body>
</html>
