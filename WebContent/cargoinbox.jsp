<%@ page language="java" import="java.sql.*,javax.servlet.*"%><%@ page import="beans.*" %>
<html>
<body bgcolor="sky blue">
<center><h2>INBOX PAGE</h2></center>
<table>
<% String a=(String)session.getAttribute("uid");%>
<tr><td>WELCOME:
<%=a%></td></tr>
</table>
<table border=1>
<tr>
 <center><td>To</td></center>
<center><td>Sub</td></center>
<center><td>Description</td></center>
<%
try 
  {
    /*  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      Connection con = DriverManager.getConnection("jdbc:odbc:mydsn","scott","tiger");*/
      Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:8081/krishnadb","krish","1919");      Statement ps=con.createStatement(); 
       ResultSet rs=ps.executeQuery("select * from sendingreports where userid='"+a+"'");
	  while(rs.next())
      {          
          String b=rs.getString(1);
		  String c=rs.getString(2);
		  String d=rs.getString(3);
		  %>
		  <tr>
		  <td><%=b%></td>
		  <td><%=c%></td>
		  <td><%=d%></td>
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
</body>
</html>

