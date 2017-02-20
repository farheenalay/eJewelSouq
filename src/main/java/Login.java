

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Login extends HttpServlet {
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email=request.getParameter("email");
		String pwd=request.getParameter("pass");
	try
	{
		Class.forName("org.h2.Driver");
		System.out.println("Driver ok");
		
		Connection conn=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/dt15","har","har");
		System.out.println("Connection Ok");

		Statement st=conn.createStatement();
		System.out.println("Statement Ok");
		
		ResultSet rs=st.executeQuery("select * from Register where email='"+email+"'and password='"+pwd+"'") ;
		System.out.println("Query executed succesfully");
	
		PrintWriter pw=response.getWriter();
		
		if(rs.next())
	    {
		pw.println("Login Success");
		
		String name=rs.getString(1);
		pw.println("Welcome to eJewelSouq " +name);
		
		String pass=rs.getString(2);
		String mail=rs.getString(3);
		String mob=rs.getString(4);
		
		}
	    else
	    {
		pw.print("Login Failed");
	    }
     
		conn.close();
        }
	     catch(Exception e)
	      {
		System.out.println("problem with database connection");
	      }
		}
}
