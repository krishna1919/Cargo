<%@ page language="java" import="java.sql.*"%>
<html>
<head>
<title>first form</title>
<table>
<% String a=(String)session.getAttribute("uid");%>
<tr><td>WELCOME:</td><td>
<%=a%></td></tr>
</table>
 <table>
<tr>
<td>
<A href="smhome.jsp" align="right"><h5>BACK</h5></A><BR></td>
</tr>
</table>
</head>
<form action="">
<body bgcolor="sky blue">
<h1><center>VIEW GOODS DETAILS</center></h1>
<img src="cover_2732354[1].jpg"align="right"></img>
<table><br><br>
<center><a href="logout1.jsp"align="left">LOGOUT:</a></center><br>
<center><a href="smgoodsdetailsd.jsp">GOODS DETAILS</center></a><BR>
<center><a href="smnewgoods.jsp">NEW GOODS</center></a><BR>
</table>
</form>
</body>
</html>