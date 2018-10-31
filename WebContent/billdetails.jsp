<%@ page language="java" import="java.sql.*,javax.servlet.*"%>
<HTML>
<HEAD><center><h3>CARGO MANAGEMENT SYSTEMS</h3></center>
<TITLE> BILL DETAILS</TITLE>
<table>
<% String a=(String)session.getAttribute("uid");%>
<tr><td>WELCOME:</td><td>
<%=a%></td></tr>
</table>
<A href="billpay.jsp">BACK</A>
<center><a href="logout1.jsp">LOGOUT:</a></center>
<img src="119932_94452653[2].jpg"align="right"></img>
</HEAD>
<BODY bgcolor="sky blue">
<form action ="billdetailsd.jsp" method="post">
<h2><center>BILL PAYABLE DETAILS</center></h2>
<pre>
      BILLNUMBER:   <input type="text" name="billno">
      RAWMATERIAL:  <input type="text" name="rawmaterial">
      QUANTITY:     <input type="text" name="quantity">
      COST:         <input type="text" name="cost">
      BILL PAYED:   <input type="text" name="billpayed">
      BILL DUE:     <input type="text" name="billdue">
      DATE:         <input type="text" name="date">
</pre>
<input type="submit" value="SAVE">
</form>
</body>
</HTML>