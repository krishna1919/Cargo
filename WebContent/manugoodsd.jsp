<%@ page language="java" import="java.sql.*"%>
<HTML>
<HEAD><center><h3>CARGO MANAGEMENT SYSTEMS</h3></center>
<TITLE> RECEIVED RAWMATERIAL DETAILS</TITLE>
<table>
<% String a=(String)session.getAttribute("uid");%>
<tr><td>WELCOME:</td><td>
<%=a%></td></tr>
</table>
<A href="manuhome.jsp"align="right">BACK</A><BR>
<center><a href="logout1.jsp">LOGOUT:</a></center>
<img src="C:\Users\hp\Desktop\1919\apache-tomcat-9.0.10\webapps\images\437153_57295439[1].jpg"align="right"></img>
</HEAD>
<BODY bgcolor="sky blue">
<form action ="manuraw.jsp" method="post">
<table>
    <tr><td><h2><center>RAWMATERIAL DETAILS</center></h2></td></tr><br><br>
<tr><td>RAWMATERIAL:</td><td> <input type="text" name="rawmaterial"></td></tr><br>
<tr><td>QUANTITY:</td><td><input type="text" name="quantity"></td></tr><br>
<tr><td>COST:</td><td><input type="text" name="cost"></td></tr><br>
<tr><td>DATE:</td><td><input type="text" name="date"></td></tr><br>
<tr><td><input type="submit" value="SEND"></td></tr>
</table>
</form>
</body>
</HTML>