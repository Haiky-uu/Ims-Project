package com.servlet;

import java.io.IOException;

import com.conn.DBConnect;
import com.dao.PersonDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/delete")
public class Delete extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int id = Integer.parseInt(req.getParameter("id"));
		
		PersonDAO dao =new PersonDAO(DBConnect.getConn());
		boolean f = dao.deleteEmployee(id);
		
 HttpSession session = req.getSession();
		 
				 
		 if(f)
		 {
			 session.setAttribute("succMsg","Employee Details deleted Sucessfully...");
			 resp.sendRedirect("emp_info.jsp");
			 //System.out.println("Employee Details deleted Sucessfully...");
			 
		 }else {
			 
			 session.setAttribute("errorMsg","Something wrong on server");
			 resp.sendRedirect("emp_info.jsp");
			 //System.out.println("Something wrong on server");

		 }
		 
		
		
		
		
		
	}
	
	

}
