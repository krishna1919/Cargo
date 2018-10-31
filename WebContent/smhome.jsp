<%@ page language="java" import="java.sql.*"%>
<BODY bgColor=#00b0e0>
<CENTER><h1>STORAGE MANAGER</h1></CENTER>
<table>
<% String a=(String)session.getAttribute("uid");%>
<tr><td>WELCOME:
<%=a%></td></tr>
</table>
 <BR>
<img src="C:\Users\hp\Desktop\1919\apache-tomcat-9.0.10\webapps\images\jf743BLWH0101[2].jpg"align="right"></img>
<table>
<pre>
                   <a href="logout1.jsp">LOGOUT:</a>
				   
				   <A href="abtstorage.jsp">ABOUTSTORAGEMANAGER</A>

                   <a href="inbox1.jsp">INBOX</a>

                   <a href="compose.jsp">COMPOSE</a>

                   <a href="senditems1.jsp">SEND ITEMS</a>

                   <a href="smrawd.jsp">VIEW RAW MATERIAL DETAILS</a>

                   <A href="smviewgoodsd.jsp">VIEW  GOODS DETAILS</A>
				   
                   <A href="smviewbills.jsp">VIEW  BILLS</A>

	            <A href="totalview.jsp">VIEW DETAILS</A>


		</pre>
</table>
</FORM>
