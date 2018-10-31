<%@ page language="java" import="java.sql.*,javax.servlet.*"%>
<html>
<head>
<title>first form</title>
</head>
<form action="">
<body bgcolor="sky blue">
<A href="manuhome.jsp">BACK</A></RIGHT></DIV><BR>
<h1><center>MANUFACTURING ITEMS</center></h1>
<table>
<% String a=(String)session.getAttribute("uid");%>
<tr><td>WELCOME:</td><td>
<%=a%></td></tr>
</table>

<img src="C:\Users\hp\Desktop\1919\apache-tomcat-9.0.10\webapps\images\43035[1].jpg"align="right"></img>
<pre>
             <a href="logout1.jsp">LOGOUT:</a>

             <a href="cpu1.html">CPU</a>

             <a href="mouse.html">MOUSE</a>

             <a href="keyboard.html">KEYBOARD</a>

             <a href="printers.html">PRINTERS</a>

              <a href="laptop.html">LAPTOPS</a>

             <a href="pendrive.html">PENDRIVES</a>

             <a href="webcam.html">WEBCAM</a>

             <a href="speakers.html">SPEAKERS</a>

             <a href="monitor.html">MONITORS</a>
</pre>
</form>
</body>
</html>