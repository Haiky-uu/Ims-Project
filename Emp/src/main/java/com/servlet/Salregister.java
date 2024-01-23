package com.servlet;

import java.io.IOException;

import com.conn.DBConnect;
import com.dao.SalaryDAO;
import com.entity.Salarygs;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/salregister")
public class Salregister extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String empid = req.getParameter("empid");
		String salary = req.getParameter("salary");
		String hra = req.getParameter("hra");
		String special = req.getParameter("special");
		String conveyance = req.getParameter("conveyance");
		String overtime = req.getParameter("overtime");
		String leave = req.getParameter("leave");
		String esi = req.getParameter("esi");
		String epf = req.getParameter("epf") ;
		String tax = req.getParameter("tax");
		String tds = req.getParameter("tds");
		String insurance = req.getParameter("insurance");
		String adv = req.getParameter("adv");
		 
		
		Salarygs salarygs = new Salarygs(empid, salary, hra, special, conveyance, overtime, leave, esi, epf, tax, tds, insurance, adv);
		
		SalaryDAO dao = new SalaryDAO(DBConnect.getConn());
		
		HttpSession session = req.getSession();
		
		boolean f = dao.addSalary(salarygs);
		
		if(f)
		{
			session.setAttribute("succMsg", "Salary details added successfully");
			resp.sendRedirect("add_salary.jsp");
		}
		else {
			session.setAttribute("errorMsg", "Something wrong on server");
			resp.sendRedirect("add_salary.jsp");
		}
	}
	
	

}
