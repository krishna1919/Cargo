<%@ page language="java" import="java.sql.*"%>
<BODY bgColor=#00b0e0>
<H1>
<CENTER>CARGO MANAGER</CENTER></H1>
<table>
<% String a=(String)session.getAttribute("uid");%>
<tr><td>WELCOME:
<%=a%></td></tr>
</table>

<img src="C:\Users\hp\Desktop\1919\apache-tomcat-9.0.10\webapps\images\PAA193000052[1].jpg"align="right"></img>
<table>
<pre>
               <a href="logout1.jsp">LOGOUT:</a>

               <A href="abtcargo.jsp">ABOUTCARGOMANAGER</A>

               <a href="inbox1.jsp">INBOX</a>

               <a href="compose.jsp">COMPOSE</a>

               <a href="senditems1.jsp">SEND ITEMS</a>

               <a href="cmrawmaterial1.jsp">RAW MATERIAL DETAILS</a>

               <A href="cmvdetails.jsp">VENDER DETAILS</A>

	        <A href="totalview.jsp">VIEW DETAILS</A>

</pre>
</table>
</FORM>
