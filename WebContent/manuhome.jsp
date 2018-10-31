<%@ page language="java" import="java.sql.*"%>
<BODY bgColor=#00b0e0>
<H1>
<CENTER>MANUFACTURER</CENTER></H1>
<table>
<% String a=(String)session.getAttribute("uid");%>
<tr><td>WELCOME:
<%=a%></td></tr>
</table>
<img src="C:\Users\hp\Desktop\1919\apache-tomcat-9.0.10\webapps\images\762083_64016871[2].jpg"align="right"></img>
<BR>
<pre>
                <a href="logout1.jsp">LOGOUT:</a>

                <A href="abtmanu.jsp">ABOUTMANUFACTURER</A>

                <a href="inbox1.jsp">INBOX</a>

                <a href="compose.jsp">COMPOSE</a>

                <a href="senditems1.jsp">SEND ITEMS</a>

                <a href="manugoodsd.jsp">RECEIVED RAWMATERIAL</a>

                <a href="manuitems.jsp">MANUFACTURING ITEMS</a>

                <a href="manusentitems.jsp">SENDED ITEMS</a>
</pre>
</FORM>
