<%@ page language="java" import="java.sql.*,javax.servlet.*"%>
<%@ page import="beans.*" %>
<%
String s=request.getParameter("goods");
int s1=Integer.parseInt(request.getParameter("quantity"));
int s2=Integer.parseInt(request.getParameter("cost"));
String s3=request.getParameter("date");
try 
  {/*
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      Connection con = DriverManager.getConnection("jdbc:odbc:mydsn","scott","tiger");*/
      Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:8081/krishnadb","krish","1919");
      PreparedStatement ps=con.prepareStatement("insert into goodsdetails values(?,?,?,?)");
      ps.setString(1,s);
	  ps.setInt(2,s1);
      ps.setInt(3,s2);
	  ps.setString(4,s3);
	  
      int i=ps.executeUpdate();
	 
                  if(i!=0)
                    {          
                      out.println("welcome"); 
                    }
				ps.close();
				con.close();
       }
         catch(Exception e)
           {
            out.println("ERROR"+e);
           }
%>