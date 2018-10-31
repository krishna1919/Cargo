<%@ page language="java" import="java.sql.*,javax.servlet.*"%>
<%@ page import="beans.*" %>
<html>
<body bgcolor="sky blue">
<table>
<% String a=(String)session.getAttribute("uid");%>
<tr><td>WELCOME:
<%=a%></td></tr>
</table>
<center><a href="logout.jsp">LOGOUT:</a></center>
<DIV align=right>
<A href="smhome.jsp">BACK</A></RIGHT></DIV><BR>
<img src="u17077145[1].jpg"align="right"></img>
<center><h2>BILL DETAILS</h2></center>
<table border=1>
<tr>
<center><td>BILLNO</td></center>
<center><td>RAWMATERIAL</td></center>
<center><td>QUANTITY</td></center>
<center><td>COST</td></center>
<center><td>BILLPAYED</td></center>
<center><td>BILLDUE</td></center>
 <center><td>DATE</td></center></tr>
<%
try 
  {
	  /*Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	  Connection con = DriverManager.getConnection("jdbc:odbc:mydsn","scott","tiger");*/
	  Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:8081/krishnadb","krish","1919");
      Statement ps=con.createStatement(); 
       ResultSet rs=ps.executeQuery("select * from billdetails");
	  while(rs.next())
      {   
		  int p=rs.getInt(1);
          String b=rs.getString(2);
		  int c=rs.getInt(3);
		  int d=rs.getInt(4);
		  String e=rs.getString(5);
		  String f=rs.getString(6);
		  String g=rs.getString(7);

		  %>
		  <tr>
		  <td><%=p%></td>
		  <td><%=b%></td>
		  <td><%=c%></td>
		  <td><%=d%></td>
		  <td><%=e%></td>
		  <td><%=f%></td>
		  <td><%=g%></td>
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