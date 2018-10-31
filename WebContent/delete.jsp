<%@ page language="java" import="java.sql.*,java.util.*" session="true"%><%@ page import="beans.*" %>
<html>
<body bgcolor="sky blue">
<div align="right"><a href="delete.html">BACK</a></div><BR>
<center><h2>DELETE PAGE</h2></center>
<% 
String k=(String)session.getAttribute("uid");
out.println("WELCOME");
%>
<%=k%>
<div align="right"><a href="inbox1.jsp">BACK</a></div><BR>
 <%
int s=Integer.parseInt(request.getParameter("c1"));
/*String mid="";
for(int i=0;i<s[i].length();i++)
{
    mid = s[i];
}*/
try 
  {
     /* Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      Connection con = DriverManager.getConnection("jdbc:odbc:mydsn","scott","tiger");*/
      Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:8081/krishnadb","krish","1919");
      PreparedStatement ps=con.prepareStatement("delete sendingreports where mid=?"); 
	  ps.setInt(1,s);
	  
      int i=ps.executeUpdate();
	   if(i!=0)
        {          
          out.println("deleted");
		 %>
		  record deleted
		  <%
         }
				//ps.close();
				//con.close();
       }
         catch(Exception e)
           {
            out.println("ERROR"+e);
           }
%>
</form>
</body>
</HTML>
