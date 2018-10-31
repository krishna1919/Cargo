<%@ page language="java" import="java.sql.*"%>
<HTML>
<HEAD></head>
<script language="javascript">
function fun1(f3)
{
	if(document.f3.rawmaterial.value=="")
	{
		alert("U HAVE TO ENTER USERNAME");
		document.f3.rawmaterial.focus();
		return false;
}
if(document.f3.quantity.value=="")
	{
		alert("U HAVE TO ENTER USERNAME");
		document.f3.quantity.focus();
		return false;
}
if(document.f3.cost.value=="")
	{
		alert("U HAVE TO ENTER USERNAME");
		document.f3.cost.focus();
		 return false;
}
if(document.f3.date.value=="")
	{
		alert("U HAVE TO ENTER USERNAME");
		document.f3.date.focus();
		return false;
}
}
</script>
<TITLE> RAWMATERIAL DETAILS</TITLE>
<META NAME="Generator" CONTENT="EditPlus">
<META NAME="Author" CONTENT="">
<META NAME="Keywords" CONTENT="">
<META NAME="Description" CONTENT="">
</HEAD>
<BODY bgcolor="sky blue">
<table>
<% String a=(String)session.getAttribute("uid");%>
<tr><td>WELCOME:
<%=a%></td></tr></table>
<A href="vhome.jsp"align="right"><h5>BACK</h5></A>
<center><a href="logout1.jsp">LOGOUT:</a></center>
<form name=f3 action ="venderraw.jsp" method="post" onSubmit="return fun1(this)">
    <tr><td><h2><center>RAWMATERIAL DETAILS</center></h2></td></tr><br><br>
	<img src="C:\Users\hp\Desktop\1919\apache-tomcat-9.0.10\webapps\images\437153_57295439[1].jpg"align="right"></img>
	<table>
<tr><td>RAWMATERIAL:</td><td> <input type="text" name="rawmaterial"></td></tr><br>
<tr><td>QUANTITY:</td><td><input type="text" name="quantity"></td></tr><br>
<tr><td>COST:</td><td><input type="text" name="cost"></td></tr><br>
<tr><td>DATE:</td><td><input type="text" name="date"></td></tr><br>
<tr><td><input type="submit" value="SEND"></td></tr>
</table>
</form>
</body>
</HTML>