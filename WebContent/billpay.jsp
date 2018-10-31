<%@ page language="java" import="java.sql.*"%>
<BODY bgColor=#00b0e0>
<CENTER><h1>BILL PAYABLE</h1></CENTER>
<table>
<% String a=(String)session.getAttribute("uid");%>
<tr><td>WELCOME:
<%=a%></td></tr>
</table>
<BR>
<img src="127209_86122913[1].jpg"align="right"></img>
<table>
<pre>
                                <a href="logout1.jsp">LOGOUT:</a>

                                <A href="abtbill.jsp">ABOUTBILLPAYABLE</A>

                                <a href="inbox1.jsp">INBOX</a>

                                <a href="compose.jsp">COMPOSE</a>

                                <a href="senditems1.jsp">SEND ITEMS</a>

                                <a href="billdetails.jsp">BILL PAYMENTS</a>

                                <a href="viewbills.jsp">VIEW BILLS</a>
	  </pre>
</table>
</FORM>
