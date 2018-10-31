<%@ page language="java" import="java.sql.*"%>
<%@ page import="beans.*" %>
<HTML>
<HEAD><center><h3>CARGO MANAGEMENT SYSTEMS</h3></center>
<table>
<% String a=(String)session.getAttribute("uid");%>
<tr><td>WELCOME:</td><td>
<%=a%></td></tr>
</table>
<%
String s=request.getParameter("rawmaterial");
int s1=Integer.parseInt(request.getParameter("bro"));
int s2=Integer.parseInt(request.getParameter("unbr"));
int s3=Integer.parseInt(request.getParameter("qty"));
int s4=Integer.parseInt(request.getParameter("cost"));
String s5=request.getParameter("d1");
try 
  {/*
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      Connection con = DriverManager.getConnection("jdbc:odbc:mydsn","scott","tiger");*/
      Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:8081/krishnadb","krish","1919");
      PreparedStatement ps=con.prepareStatement("insert into rawmaterial values(?,?,?,?,?,?)");
      ps.setString(1,s);
	  ps.setInt(2,s1);
      ps.setInt(3,s2);
	  ps.setInt(4,s3);
	  ps.setInt(5,s4);
	  ps.setString(6,s5);
	  int i=ps.executeUpdate();
	 
                  if(i!=0)
                    {          
                        
                      %>
                    <jsp:forward page="smrecord.html"/>
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