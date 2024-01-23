package com.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		List<String> roles = new ArrayList<>();
;
		try {
			
			Class.forName("org.postgresql.Driver");
			Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/viper","viper","258925");
			String u = req.getParameter("empid");
			String p = req.getParameter("password");
			PreparedStatement ps = conn.prepareStatement("select empid from emp.user where emp.user.empid=? and emp.user.passwd=?;");
			PreparedStatement ps1 = conn.prepareStatement("select emp.role.name as role from emp.user join emp.user_role on emp.user.empid=emp.user_role.empid join emp.role on emp.user_role.roleid=emp.role.roleid where emp.user.empid=?;");
			ps.setString(1, u);
			ps.setString(2, p);
			ps1.setString(1, u);
			
			
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				String empid =rs.getString("empid");
				ResultSet rs1 = ps1.executeQuery();
				while(rs1.next())
				{
					String role = rs1.getString("role");
					roles.add(role);
					
				}
				System.out.println(roles);
				for(Object obj : roles) {
					System.out.println(obj+"login.java");
				}
				HttpSession session = req.getSession();
				session.setAttribute("role", roles);
				session.setAttribute("empid", empid);
				RequestDispatcher rd = req.getRequestDispatcher("front.jsp");
				rd.forward(req, resp);
			}
			else {
				resp.sendRedirect("index.jsp");
				//out.println("<font color=red size=18>Login Failed!!<br>");
				//out.println("<a href=login.jsp>Try Again!!!</a>");
			}
			
			
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	
	
	
	

}