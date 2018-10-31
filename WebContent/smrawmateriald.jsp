<%@ page language="java" import="java.sql.*"%>
<HTML>

<TITLE> NEW RAWMATERIAL</TITLE>
<table>
<% String a=(String)session.getAttribute("uid");%>
<tr><td>WELCOME:
<%=a%></td></tr>
</table>
<A href="smrawd.jsp" align="right"><h5>BACK</h5></A><BR>
<a href="logout1.jsp" align="right">LOGOUT:</a>
</HEAD>
<BODY bgcolor="sky blue">
<form action ="smrawmaterial.jsp" method="post">
<tr><td><h2><center>VIEW NEW RAWMATERIAL DETAILS</center></h2></td></tr>
<img src="C:\Users\hp\Desktop\1919\apache-tomcat-9.0.10\webapps\images\139628-xxs[1].jpg"align="right"></img>
<img src="C:\Users\hp\Desktop\1919\apache-tomcat-9.0.10\webapps\images\150241-xxs[1].jpg"align="right"></img>
<table>
<pre>
<tr><td>RAWMATERIAL TYPE:</td><td> <input type="text" name="rawmaterial"></td></tr><br>
<tr><td>BROKEN:</td><td><input type="text" name="bro"></td></tr><br>
<tr><td>UNBROKEN:</td><td><input type="text" name="unbr"></td></tr><br>
<tr><td>QUANTITY:</td><td><input type="text" name="qty"></td></tr><br>
<tr><td>COST:</td><td><input type="text" name="cost"></td></tr><br>
<tr><td>DATE:</td><td><input type="text" name="d1"></td></tr><br>
<tr><td><input type="submit" value="SEND"></td></tr>
 </pre>
</table>
</form>
</body>
</HTML>