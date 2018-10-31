<%@ page language="java" import="java.sql.*"%>
<HTML>
<HEAD><center><h3>CARGO MANAGEMENT SYSTEMS</h3></center>
<TITLE> SENDED ITEMS DETAILS</TITLE>
<table>
<% String a=(String)session.getAttribute("uid");%>
<tr><td>WELCOME:</td><td>
<%=a%></td></tr>
</table>
<A href="manuhome.jsp" align="right"><h5>BACK</h5></A><BR>
<center><a href="logout1.jsp">LOGOUT:</a></center>
<img src="65414-xs[1].jpg"align="right"></img>
<BODY bgcolor="sky blue">
<form action ="manusendeditems.jsp" method="post">
<table>
 <tr><td>GOODID:</td><td> <input type="text" name="goodsid"></td></tr><br>   
 <tr><td>GOODNAME:</td><td> <input type="text" name="goodname"></td></tr><br>
 <tr><td>QUANTITY:</td><td><input type="text" name="quantity"></td></tr><br>
<tr><td>COST:</td><td><input type="text" name="cost"></td></tr><br>
<tr><td>DATE:</td><td><input type="text" name="date"></td></tr><br>
<tr><td><input type="submit" value="SEND"></td></tr>
</table>
</form>
</body>
</HTML>
