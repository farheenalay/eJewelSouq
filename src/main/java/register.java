

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class register extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		String username,password,email,mobno,dateofbirth,country,gender;
		
		username=req.getParameter("username");
		password=req.getParameter("password");
		email=req.getParameter("email");
		mobno=req.getParameter("mobno");
		dateofbirth=req.getParameter("dateofbirth");
		country=req.getParameter("country");
		gender=req.getParameter("gender");
		
	     try{
				Class.forName("org.h2.Driver");
				System.out.println("Driver ok");
				Connection connect=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/dt15","har","har");
				System.out.println("Connection ok");
				
				PreparedStatement ps=connect.prepareStatement("insert into Register values(?,?,?,?,?,?,?)");
				
				
				ps.setString(1,"username");
				ps.setString(2,"password");
				ps.setString(3,"email");
				ps.setString(4,"mobno");
				ps.setString(5,"dateofbirth");
				ps.setString(6,"country");
				ps.setString(7,"gender");
				System.out.println("Statement ok");
				
				ps.executeUpdate();
			    System.out.println("Query ok");		
				
			    connect.close();
			}
			catch (Exception e)
			{
				System.out.println("error in database");
			}
		}

	}
