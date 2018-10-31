<%@ page language="java" import="java.sql.*"%><%@ page import="beans.DBConnection" %>
<%@ page import="beans.LoggedInUsers" %>
<%
String s=request.getParameter("t1");
String s1=request.getParameter("t2");
String s2=request.getParameter("type");
session .setAttribute("uid",s);
try 
  {
      /*Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      Connection con = DriverManager.getConnection("jdbc:odbc:mydsn","scott","tiger");*/
      Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/krishnadb","krish","1919");
      PreparedStatement ps=con.prepareStatement("select * from logintable where userid=?");
      ps.setString(1,s);
      ResultSet rs = ps.executeQuery();
        if(rs.next())
            {
                String n=rs.getString(1);
		//out.println(n);
                String n1=rs.getString(2);
                String n2=rs.getString(3); 
             
                 if(s.equals(n)&&s1.equals(n1)&&s2.equals(n2))
                   {
                    if(s2.equals("cargomanager"))
                      {
                      beans.LoggedInUsers log=new beans.LoggedInUsers(application,s);
                     boolean b=log.getExistingUser(); 
                     if(b)
                     out.println("the user has already existed");
                     else
                     {
                     session .setAttribute("uid",s);
                     application.setAttribute(s,s);
%>
	                       <jsp:forward page="cmhome.jsp" />
	                      <%
	                      }                    
                         }
                         else if(s2.equals("vendor"))
                           {
                           beans.LoggedInUsers log=new beans.LoggedInUsers(application,s);
                     boolean b=log.getExistingUser(); 
                     if(b)
                     out.println("the user has already existed");
                     else
                     {
                     session .setAttribute("uid",s);
                     application.setAttribute(s,s);
                           
                          %>
                            <jsp:forward page="vhome.jsp"/>
					  <%
                           } }
                          else if(s2.equals("inspectionmanager"))
                             {
                           %>
                              <jsp:forward page="imhome.jsp" />
                            <% 
                            } 
                         else if(s2.equals("storagemanager"))
                             {
                           %>
                              <jsp:forward page="smhome.jsp" />
                            <%
                                 } 
                             
                            else if(s2.equals("billpayable"))
                            {
                               %>
                              <jsp:forward page="billpay.jsp" />
                            <%
                       }
                        else if(s2.equals("manufacturer"))
                            {
                               %>
                              <jsp:forward page="manuhome.jsp" />
                            <%
                            }
						   else
							{
                               out.println("Invalid userid or password or type of user");
                            }
			         }
                   }
  }
              catch(Exception e)
                 {
                     out.println(e);
                }
%>
                 