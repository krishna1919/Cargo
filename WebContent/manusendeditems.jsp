1<%@ page language="java" import="java.sql.*,javax.servlet.*"%><%@ page import="beans.*" %>
<table>
<% String a=(String)session.getAttribute("uid");%>
<tr><td>WELCOME:</td><td>
<%=a%></td></tr>
</table>
<center><a href="logout1.jsp">LOGOUT:</a></center>
<%
String s=request.getParameter("goodsid");
String s1=request.getParameter("goodname");
int s2=Integer.parseInt(request.getParameter("quantity"));
int s3=Integer.parseInt(request.getParameter("cost"));
String s4=request.getParameter("date");
try 
  {
/*      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      Connection con = DriverManager.getConnection("jdbc:odbc:mydsn","scott","tiger");*/
      Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:8081/krishnadb","krish","1919");
      PreparedStatement ps=con.prepareStatement("insert into sendeditems values(?,?,?,?,?)");
      ps.setString(1,s);
	  ps.setString(2,s1);
	  ps.setInt(3,s2);
      ps.setInt(4,s3);
	  ps.setString(5,s4);
	  
      int i=ps.executeUpdate();
	 
                  if(i!=0)
                    {          
                      %>//out.println(""); 
                    <jsp:forward page="manugoods.html"/>
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