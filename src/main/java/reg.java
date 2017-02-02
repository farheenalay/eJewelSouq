

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class reg extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		String un,pwd,em,mob,dob,con,gen;
		
		un=req.getParameter("firstname");
		pwd=req.getParameter("password");
		em=req.getParameter("email");
		mob=req.getParameter("mobno");
		dob=req.getParameter("birthdate");
		con=req.getParameter("country");
		gen=req.getParameter("gender");
		
	     try{
				Class.forName("org.h2.Driver");
				System.out.println("Driver ok");
				Connection connect=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/dt15","har","har");
				System.out.println("Connection ok");
				Statement stmt=connect.createStatement();
				System.out.println("Statement ok");
				stmt.executeUpdate("insert into Register values('"+un+"','"+pwd+"','"+em+"','"+mob+"','"+dob+"','"+con+"','"+gen+"')");
				System.out.println("Query ok");		
				connect.close();
			}
			catch (Exception e)
			{
				System.out.println("error in database");
			}
		}

	}
