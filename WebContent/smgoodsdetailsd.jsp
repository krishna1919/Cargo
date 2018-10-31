<%@ page language="java" import="java.sql.*,javax.servlet.*"%>
<%@ page import="beans.*" %>
<html>
<body bgcolor="sky blue">
<table>
<% String a=(String)session.getAttribute("uid");%>
<tr><td>WELCOME:</td><td>
<%=a%></td></tr>
</table>
<A href="smviewgoodsd.jsp"/><h5>BACK</h5></A></RIGHT><BR>
<center><a href="logout1.jsp">LOGOUT:</a></center>
<center><h2>GOODS DETAILS</h2></center>
<img src="C:\Users\hp\Desktop\1919\apache-tomcat-9.0.10\webapps\images\155284-xxs[1].jpg"align="right"></img>
<img src="C:\Users\hp\Desktop\1919\apache-tomcat-9.0.10\webapps\images\CB054746[1].jpg"align="right"></img>
<img src="C:\Users\hp\Desktop\1919\apache-tomcat-9.0.10\webapps\images\157036-xxs[1].jpg"align="right"></img>
<table border=1>
<tr>
 <center><td>GOODS</td></center>
<center><td>QUANTITY</td></center>
<center><td>COST</td></center>
<center><td>DATE</td></center>
 <%
try 
  {
     
	  /*Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	  Connection con = DriverManager.getConnection("jdbc:odbc:mydsn","scott","tiger");*/
	  Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:8081/krishnadb","krish","1919");
      Statement ps=con.createStatement(); 
       ResultSet rs=ps.executeQuery("select * from goodsdetails");
	  while(rs.next())
      {          
         String p=rs.getString(1);
		 int b=rs.getInt(2);
		 int c=rs.getInt(3);
         String d=rs.getString(4);
		  %>
		  <tr>
		  <td><%=p%></td>
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