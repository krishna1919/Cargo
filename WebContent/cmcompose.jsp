<%@ page language="java" import="java.sql.*,javax.servlet.*"%><%@ page import="beans.*" %>
<%
String s=request.getParameter("to");
String s1=request.getParameter("sub");
String s2=request.getParameter("data");
String a=(String)session.getAttribute("uid");

try 
  {
      /*Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      Connection con = DriverManager.getConnection("jdbc:odbc:mydsn","scott","tiger");*/
      Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:8081/krishnadb","krish","1919");      PreparedStatement ps=con.prepareStatement("insert into sendingreports values(?,?,?,?)");
      ps.setString(1,s);
	  ps.setString(2,s1);
	  ps.setString(3,s2);
	  ps.setString(4,a);
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