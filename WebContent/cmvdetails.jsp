<%@ page language="java" import="java.sql.*,javax.servlet.*"%>
<html>
<body bgcolor="sky blue">
<table>
<% String a=(String)session.getAttribute("uid");%>
<tr><td>WELCOME:</td><td>
<%=a%></td></tr>
</table>
<A href="cmhome.jsp" align="right">BACK</A>
<center><a href="login.jsp">LOGOUT:</a></center>
<center><h2>VENDOR DETAILS</h2></center>
<table border=1>
<tr>
<center><td>USERID</td></center>
<center><td>DIS</td></center>
<center><td>DOB</td></center>
<center><td>CONTACTNO</td></center>
<center><td>EMAILID</td></center>
<center><td>L_OF_QUAN</td></center>
<center><td>RAWMAT DET</td></center>
<center><td>ADDRESS</td></center>
 <%
try 
  {
     
	Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:8081/krishnadb","krish","1919");
     Statement ps=con.createStatement(); 
       ResultSet rs=ps.executeQuery("select * from registrationform");
	  while(rs.next())
      {          
         String p=rs.getString(1);
		
       String d=rs.getString(4);
		 String e=rs.getString(5);
         int f=rs.getInt(6);
		 String g=rs.getString(7);
		 int h=rs.getInt(8);
		 String i=rs.getString(9);
		 String j=rs.getString(10);
		 %>
		  <tr>
		  <td><%=p%></td>
		  
		  <td><%=d%></td>
		  <td><%=e%></td>
		  <td><%=f%></td>
		  <td><%=g%></td>
		  <td><%=h%></td>
		  <td><%=i%></td>
		  <td><%=j%></td>
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