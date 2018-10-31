<%@ page language="java" import="java.sql.*,javax.servlet.*"%><%@ page import="beans.*" %>
<table>
<% String a=(String)session.getAttribute("uid");%>
<tr><td>WELCOME:</td><td>
<%=a%></td></tr>
</table>
<center><a href="logout1.jsp">LOGOUT:</a></center>
<%
String s=request.getParameter("t1");
String s1=request.getParameter("t2");
String s2=request.getParameter("type");
String s3=request.getParameter("gender");
String s4=request.getParameter("dob");
String s5=request.getParameter("cno");
String s6=request.getParameter("email");
String s7=request.getParameter("qua1");
String s8=request.getParameter("raw1");
String s9=request.getParameter("add");
try 
  {/*
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      Connection con = DriverManager.getConnection("jdbc:odbc:mydsn","scott","tiger");*/
      Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/krishnadb","krish","1919");
      PreparedStatement ps=con.prepareStatement("insert into registrationform  values(?,?,?,?,?,?,?,?,?,?)");
	  PreparedStatement ps1=con.prepareStatement("insert into logintable  values(?,?,?)");
      ps.setString(1,s);
	  ps.setString(2,s1);
	  ps.setString(3,s2);
	  ps.setString(4,s3);
	  ps.setString(5,s4);
	  ps.setString(6,s5);
      ps.setString(7,s6);
	  ps.setString(8,s7);
	  ps.setString(9,s8);
      ps.setString(10,s9);
	  ps1.setString(1,s);
	  ps1.setString(1,s1);
	  ps1.setString(1,"vendor");
      int i=ps.executeUpdate();
	 
                  if(i!=0)
                    {          
                      %>//out.println(""); 
                    <jsp:forward page="venderrecord.html"/>
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