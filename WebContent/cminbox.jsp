<%@ page language="java" import="java.sql.*,javax.servlet.*"%><%@ page import="beans.*" %>
<html>
<body bgcolor="sky blue">
<center><h2>INBOX PAGE</h2></center>
<table border=1>
<tr>
<td><center>To</center></td>
<center><td>Sub</td></center>
<center><td>Description</td></center>
<%
try 
  {
      /*Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      Connection con = DriverManager.getConnection("jdbc:odbc:mydsn","scott","tiger");*/
      Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:8081/krishnadb","krish","1919");      Statement ps=con.createStatement(); 
       ResultSet rs=ps.executeQuery("select * from sendingreports where userid='purna'");
	  while(rs.next())
       {          
          String a=rs.getString(1);
		  String b=rs.getString(2);
		  String c=rs.getString(3);
		  %>
		  <tr>
		  <td><%=a%></td>
		  <td><%=b%></td>
		  <td><%=c%></td>
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

