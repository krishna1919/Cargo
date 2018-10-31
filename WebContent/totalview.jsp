<%@ page language="java" import="java.sql.*"%>
<%@ page import="beans.*" %>
<html>
<head>
<title>first form</title>
<table>
<% String a=(String)session.getAttribute("uid");%>
<tr><td>WELCOME:
<%=a%></td></tr>
</table>
</head>
 <form action="">
<body bgcolor="sky blue">
<h1><center><h2>VIEW DETAILS</h2></center></h1>
<img src="C:\Users\hp\Desktop\1919\apache-tomcat-9.0.10\webapps\images\4884,1162686838,1[2].jpg"align="right"></img>
<table>
<pre>
              <a href="logout1.jsp">LOGOUT:</a>

              <a href="totalraw.jsp">RAWMATERIAL DETAILS</a>

              <a href="totalgoods.jsp">GOODS DETAILS</a>

</pre>
</table>
</form>
</body>
</html>