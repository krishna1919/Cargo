<%@ page language="java" import="java.sql.*"%>
<%@ page import="beans.*" %>
<% String a=(String)session.getAttribute("uid");%>
<%
String s=request.getParameter("to");
String s1=request.getParameter("sub");
String s2=request.getParameter("data");
try 
  {/*
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      Connection con = DriverManager.getConnection("jdbc:odbc:mydsn","scott","tiger");*/
      Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:8081/krishnadb","krish","1919");
      int i1=0;
	  int c=0;
	  PreparedStatement ps1=con.prepareStatement("select count(*) from sendingreports");
	  ResultSet rs =ps1.executeQuery();
	  if(rs.next())
	  {
		  i1=rs.getInt(1);
		  if(i1==0)
		  {
			  c++;
		  }
		  else
		  {
			  c=i1+1;
		  }
	  }
      PreparedStatement ps=con.prepareStatement("insert into sendingreports values(?,?,?,?,?)");
      ps.setString(1,s);
	  ps.setString(2,s1);
	  ps.setString(3,s2);
	  ps.setString(4,a);
	  ps.setInt(5,c);
	 
      int i=ps.executeUpdate();
	  if(i!=0)
	  {
		   %>//out.println(""); 
                    <jsp:forward page="composerecord.html"/>
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