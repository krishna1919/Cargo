<%@ page language="java" import="java.sql.*,javax.servlet.*"%>
<HTML>
<table>
<% String a=(String)session.getAttribute("uid");%>
<tr><td>WELCOME:</td><td>
<%=a%></td></tr>
</table>
<center><a href="logout1.jsp">LOGOUT:</a></center>
 </HEAD>
<BODY bgcolor="sky blue">
<form action ="smnewgoodsd.jsp" method="post">
<table>
<tr><td><h2><center>VIEW NEW GOODS DETAILS</center></h2></td></tr><br><br></table>
<A href="smviewgoodsd.jsp"><h5>BACK</h5></A></RIGHT><BR>
<img src="C:\Users\hp\Desktop\1919\apache-tomcat-9.0.10\webapps\images\139628-xxs[1].jpg"align="right"></img>
<img src="C:\Users\hp\Desktop\1919\apache-tomcat-9.0.10\webapps\images\150241-xxs[1].jpg"align="right"></img>
<table>
<tr><td>GOODS TYPE:</td><td> <input type="text" name="a"></td></tr><br>
<tr><td>COST:</td><td><input type="text" name="b"></td></tr><br>
<tr><td>BROKEN:</td><td><input type="text" name="c"></td></tr><br>
<tr><td>UNBROKEN:</td><td><input type="text" name="d"></td></tr><br>
<tr><td>QUANTITY:</td><td><input type="text" name="e"></td></tr><br>
<tr><td>DATE:</td><td><input type="text" name="f"></td></tr><br>
<tr><td><input type="submit" value="SEND"></td></tr>
</table>
</form>
</body>
</HTML>