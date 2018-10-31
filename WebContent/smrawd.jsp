<%@ page language="java" import="java.sql.*"%>
<html>
<head>
<title>first form</title>
<table>
<% String a=(String)session.getAttribute("uid");%>
<tr><td>WELCOME:
<%=a%></td></tr>
</table>
<A href="smhome.jsp" align="right"><h5>BACK</h5></A>
</head>
<form action="">
<body bgcolor="sky blue">
<h1><center><h2>VIEW RAWMATERIAL DETAILS</h2></center></h1>
<img src="C:\Users\hp\Desktop\1919\apache-tomcat-9.0.10\webapps\images\510883_25363690[1].jpg"align="right"></img>
<table>
 <pre>
              <a href="logout1.jsp">LOGOUT:</a>

              <a href="totalraw.jsp">RAWMATERIAL DETAILS</a>

              <a href="smrawmateriald.jsp">NEW RAWMATERIAL</a>

</pre>
</table>
</form>
</body>
</html>