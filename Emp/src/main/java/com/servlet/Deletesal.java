package com.servlet;

import java.io.IOException;

import com.conn.DBConnect;
import com.dao.SalaryDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/deletesal")
public class Deletesal extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int id = Integer.parseInt(req.getParameter("id"));
		
		SalaryDAO dao = new SalaryDAO(DBConnect.getConn());
		boolean f = dao.deleteSalary(id);
		
		HttpSession session = req.getSession();
		
		if(f) {
			
			 session.setAttribute("succMsg","Salary Related Details deleted Sucessfully...");
			 resp.sendRedirect("salary_info.jsp");
			 //System.out.println("Salary Details deleted Sucessfully...");
			
		}
		else {
			
			 session.setAttribute("errorMsg","Something wrong on server");
			 resp.sendRedirect("salary_info.jsp");
			 //System.out.println("Something wrong on server");
		}
		
	}

}
