<%@ page language="java" import="java.sql.*,javax.servlet.*"%>
<HTML>
<table>
<% String a=(String)session.getAttribute("uid");%>
<tr><td>WELCOME:</td><td>
<%=a%></td></tr>
</table>
<center><a href="logout1.jsp">LOGOUT:</a></center>
 </HEAD>
<BODY bgcolor="sky blue">
<form action ="imnewgoodsd.jsp" method="post">

<center><h2>VIEW NEW GOODS DETAILS</h2></center>
<A href="imviewgoodsd.jsp" align="right"><h5>BACK</h5></A>

                                                <right> <img src="139628-xxs[1].jpg"></img></right>
                                                         <img src="150241-xxs[1].jpg"></img>
<pre>
          GOODS TYPE  :  <input type="text" name="p">
          COST        :  <input type="text" name="b">
          BROKEN      :  <input type="text" name="c">
          UNBROKEN    :  <input type="text" name="d">
          QUANTITY    :  <input type="text" name="e">
          DATE        :  <input type="text" name="f">
</pre>
       <input type="submit" value="SEND">
</form>
</body>
</HTML>