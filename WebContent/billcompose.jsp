<%@ page language="java" import="java.sql.*,javax.servlet.*"%>
<%@ page import="beans.*" %>
<table>
<% String a=(String)session.getAttribute("uid");%>
<tr><td>WELCOME:</td><td>
<%=a%></td></tr>
</table>
<center><a href="logout.jsp">LOGOUT:</a></center>
<%
String s=request.getParameter("to");
String s1=request.getParameter("sub");
String s2=request.getParameter("data");

try 
  {
      /*Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      Connection con = DriverManager.getConnection("jdbc:odbc:mydsn","scott","tiger");
      */
      
      Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:8081/krishnadb","krish","1919");
      PreparedStatement ps=con.prepareStatement("insert into sendingreports values(?,?,?)");
      ps.setString(1,s);
	  ps.setString(2,s1);
	  ps.setString(3,s2);
	 
      int i=ps.executeUpdate();
	 
                  if(i!=0)
                    {          
                      out.println("record sended succesfully");
                    }
				ps.close();
				con.close();
       }
         catch(Exception e)
           {
            out.println("ERROR"+e);
           }
%>
