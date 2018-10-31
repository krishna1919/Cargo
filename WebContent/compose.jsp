<%@ page language="java" import="java.sql.*"%>
<HTML>
<HEAD><center><h3>CARGO MANAGEMENT SYSTEMS</h3></center>
<TITLE> SENDING REPORT</TITLE>
<META NAME="Generator" CONTENT="EditPlus">
<META NAME="Author" CONTENT="">
<META NAME="Keywords" CONTENT="">
<META NAME="Description" CONTENT="">
</HEAD>
<BODY bgcolor="sky blue">
<table>
<% String a=(String)session.getAttribute("uid");%>
<tr><td>WELCOME:
<%=a%></td></tr>
</table>
<A href="cmhome.jsp"><h5>BACK</h5></A></RIGHT><BR>
<center><a href="logout1.jsp">LOGOUT:</a></center>
<table border=1><tr><td>
<img src="154993-xxs[1].jpg"></img>
</td>
<form action ="smcompose.jsp" method="post">
<td><center>SENDING REPORTS</center></td><br><br>
<td>TO:</td><td> <input type="text" name="to"></td>
<td>SUBJECT:</td><td><input type="text" name="sub"></td>
<td>DATA:</td><td><textarea name="data"></textarea></td>
</table>
<pre>
                                <input type="submit" value="SEND">
						 		</pre>

</form>
</body>
</HTML>