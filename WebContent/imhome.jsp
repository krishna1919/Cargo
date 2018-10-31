<%@ page language="java" import="java.sql.*"%>
<BODY bgColor=#00b0e0>
<H1>
<CENTER><h2>INSPECTION MANAGER</h2> </CENTER></H1>
<table>
<% String a=(String)session.getAttribute("uid");%>
<tr><td>WELCOME:
<%=a%></td></tr>
</table>
<center><a href="logout.jsp">LOGOUT:</a></center>
<DIV align=right>
</DIV><BR>
 <img src="C:\Users\hp\Desktop\1919\apache-tomcat-9.0.10\webapps\images\PAA197000012[1].jpg"align="right"></img>
<table>
 <pre>
      

      <A href="abtim.jsp">ABOUTINSPECTIONMANAGER</A>

      <a href="inbox1.jsp">INBOX</a>

      <a href="compose.jsp">COMPOSE</a>

      <a href="senditems1.jsp">SEND ITEMS</a>

      <a href="imrawd.jsp">VIEW RAW MATERIAL DETAILS</a>

      <A href="imviewgoodsd.jsp">VIEW  GOODS DETAILS</A>

      <A href="totalview.jsp">VIEW DETAILS</A>
</pre>
</table>
</FORM>
