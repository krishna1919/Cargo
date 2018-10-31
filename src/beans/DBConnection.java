// Decompiled by DJ v3.5.5.77 Copyright 2003 Atanas Neshkov  Date: 12/26/2008 12:28:05 PM
// Home Page : http://members.fortunecity.com/neshkov/dj.html  - Check often for new version!
// Decompiler options: packimports(3) 
// Source File Name:   DBConnection.java

package beans;
import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class DBConnection extends HttpServlet
{

    DBConnection()
    {
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response)
    	      throws ServletException, IOException {
        System.out.println("the connection is obtained from the noraml database connection");
        try {
			Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:8081/krishnadb","krish","1919");
        }
        catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    
	   }
}