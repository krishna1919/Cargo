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

int s=Integer.parseInt(request.getParameter("billno"));
String s1=request.getParameter("rawmaterial");
int s2=Integer.parseInt(request.getParameter("quantity"));
int s3=Integer.parseInt(request.getParameter("cost"));
String s4=request.getParameter("billpayed");
String s5=request.getParameter("billdue");
String s6=request.getParameter("date");
try 
  {
      /*Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      Connection con = DriverManager.getConnection("jdbc:odbc:mydsn","scott","tiger");*/
      Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:8081/krishnadb","krish","1919");      PreparedStatement ps=con.prepareStatement("insert into billdetails values(?,?,?,?,?,?,?)");
	  ps.setInt(1,s);
      ps.setString(2,s1);
	  ps.setInt(3,s2);
      ps.setInt(4,s3);
	  ps.setString(5,s4);
	  ps.setString(6,s5);
	  ps.setString(7,s6);
	  int i=ps.executeUpdate();
	 
                  if(i!=0)
                    {          
                        
                      %>
                    <jsp:forward page="billrecord.html"/>
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