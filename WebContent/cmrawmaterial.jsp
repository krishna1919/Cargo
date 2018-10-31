<%@ page errorPage="ExceptionHandler.jsp" %><%@ page import="beans.*" %>
<%@ page language="java" import="java.sql.*,javax.servlet.*"%>
<table>
<% String a=(String)session.getAttribute("uid");
%>
<tr><td>WELCOME:</td><td>
<%=a%></td></tr>
</table>
<center><a href="logout1.jsp">LOGOUT:</a></center>
<%
String s=request.getParameter("rawmaterial");
int s1=Integer.parseInt(request.getParameter("quantity"));
int s2=Integer.parseInt(request.getParameter("cost"));
String s3=request.getParameter("date");
try 
  {
     /* Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      Connection con = DriverManager.getConnection("jdbc:odbc:mydsn","scott","tiger");*/
      Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:8081/krishnadb","krish","1919");
      PreparedStatement ps=con.prepareStatement("insert into rawmaterialdetails values(?,?,?,?)");
      ps.setString(1,s);
	  ps.setInt(2,s1);
      ps.setInt(3,s2);
	  ps.setString(4,s3);
	  
      int i=ps.executeUpdate();
	 
                  if(i!=0)
                    {          
                       %>//out.println(""); 
                    <jsp:forward page="ramaterial2.html"/>
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