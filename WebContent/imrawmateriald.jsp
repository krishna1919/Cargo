<%@ page language="java" import="java.sql.*"%>
<HTML>
<head>
<TITLE> NEW RAWMATERIAL</TITLE>
<table>
<% String a=(String)session.getAttribute("uid");%>
<tr><td>WELCOME:
<%=a%></td></tr>
</table>
<div aligh="right"><A href="imrawd.jsp" ><h5>BACK</h5></A>
<div aligh="left"><a href="logout1.jsp">LOGOUT:</a>                                                      
<BODY bgcolor="sky blue">
<form action ="imrawmaterial.jsp" method="post">
<tr><td><h2><center>VIEW NEW RAWMATERIAL DETAILS</center></h2></td></tr>
<img src="139628-xxs[1].jpg"align="right"></img>
<img src="150241-xxs[1].jpg"align="right"></img>
<table>
<pre>
<tr><td>RAWMATERIAL TYPE:</td><td> <input type="text" name="rawmaterial"></td></tr><br>
<tr><td>BROKEN:</td><td><input type="text" name="broken"></td></tr><br>
<tr><td>UNBROKEN:</td><td><input type="text" name="unbroken"></td></tr><br>
<tr><td>QUANTITY:</td><td><input type="text" name="quantity"></td></tr><br>
<tr><td>COST:</td><td><input type="text" name="cost"></td></tr><br>
<tr><td>DATE:</td><td><input type="text" name="date"></td></tr><br>
<tr><td><input type="submit" value="SEND"></td></tr>
 </pre>
</table>
</form>
</body>
</HTML>