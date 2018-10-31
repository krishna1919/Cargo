<%@ page language="java" import="java.sql.*,javax.servlet.*"%>
<%@ page import="beans.*" %>
<html>
<body bgcolor="sky blue">
<center><h2>VIEWSENTITEMS</h2></center>
<table border=1>
<tr>
<A href="VHOME.html">BACK</A></RIGHT></DIV><BR>
<center><td>To</td></center>
<center><td>Sub</td></center>
 <center><td>Description</td></center>
<%
try 
  {
    /*  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      Connection con = DriverManager.getConnection("jdbc:odbc:mydsn","crgo","crgo");*/
      Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:8081/krishnadb","krish","1919");
      PreparedStatement ps=con.prepareStatement("select * from sendingreports"); 

       ResultSet rs=ps.executeQuery();
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