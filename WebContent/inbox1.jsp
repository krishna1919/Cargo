<%@ page language="java" import="java.sql.*,javax.servlet.*"%>
<%@ page import="beans.*" %>
<html>
<body bgcolor="sky blue">
<center><h2>INBOX PAGE</h2></center>
<table>
<% String a=(String)session.getAttribute("uid");%>
<tr><td>WELCOME:</td><td>
<%=a%></td></tr>
</table>
<div align="right"><a href="cmhome.jsp">BACK</a></div><BR>
<center><a href="logout.jsp">LOGOUT:</a></center>
<img src="312887_15895269[2].jpg"align="right"></img>
<td>
<form method="post" action="delete.jsp">
<table border=1 align="center">
<center><td><h3></h3></td></center>
<center><td><h3>SUB</h3></td></center>
<center><td><h3>DIS</h3></td></center>
<center><td><h3>FROM</h3></td></center></tr>
 <%
try 
  {
      /*Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      Connection con = DriverManager.getConnection("jdbc:odbc:mydsn","scott","tiger");
      */
      Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:8081/krishnadb","krish","1919");
      Statement ps=con.createStatement(); 
       ResultSet rs=ps.executeQuery("select * from sendingreports where userid='"+a+"'");
	   
	  while(rs.next())
      {          
          
		  String c=rs.getString(2);
		  String d=rs.getString(3);
		  String b=rs.getString(4);
		  int cid=rs.getInt(5);
		  %>
		  <tr>
		  <td><input type="checkbox" name="c1" value="<%=cid%>"></td>
		  <td><%=c%></td>
		  <td><%=d%></td>
		  <td><%=b%></td>
		  </tr>
		  <%
      }
				ps.close();
				con.close();
       }
         catch(Exception e)
           {
            out.println("ERROR"+e);
           }
%>
</table>
<input type=submit value=delete>
</form>
</body>
</HTML>
